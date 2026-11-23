package com.vinicius.pokedex_api;

import com.vinicius.pokedex_api.entity.EliteFourMember;
import com.vinicius.pokedex_api.entity.GymLeader;
import com.vinicius.pokedex_api.entity.Pokemon;
import com.vinicius.pokedex_api.entity.TeamPokemon;
import com.vinicius.pokedex_api.exception.ResourceNotFoundException;
import com.vinicius.pokedex_api.repository.EliteFourMemberRepository;
import com.vinicius.pokedex_api.repository.GenerationRepository;
import com.vinicius.pokedex_api.repository.GymLeaderRepository;
import com.vinicius.pokedex_api.repository.PokemonRepository;
import com.vinicius.pokedex_api.service.TrainerService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

@SpringBootTest
class PokedexApiApplicationTests {

	@Autowired
	private GenerationRepository generationRepository;

	@Autowired
	private PokemonRepository pokemonRepository;

	@Autowired
	private GymLeaderRepository gymLeaderRepository;

	@Autowired
	private EliteFourMemberRepository eliteFourMemberRepository;

	@Autowired
	private TrainerService trainerService;

	@Test
	void contextLoads() {
	}

	// Confere se o data.sql carregou tudo
	@Test
	void loadsAllData() {
		assertEquals(5, generationRepository.count());
		assertEquals(45, pokemonRepository.count());
		assertEquals(15, pokemonRepository.findByStarterTrueOrderByIdAsc().size());
		assertEquals(40, gymLeaderRepository.count());
		assertEquals(20, eliteFourMemberRepository.count());
	}

	// Confere os links das imagens normal e shiny e do grito
	@Test
	void buildsImageLinks() {
		Pokemon charmander = pokemonRepository.findById(4).orElseThrow();

		assertEquals("https://img.pokemondb.net/sprites/home/normal/charmander.png", charmander.getImageUrl());
		assertEquals("https://img.pokemondb.net/sprites/home/shiny/charmander.png", charmander.getShinyImageUrl());
		assertEquals("https://play.pokemonshowdown.com/audio/cries/charmander.mp3", charmander.getCryUrl());
	}

	// Confere se cada time ficou ligado ao treinador certo
	@Test
	void loadsTheTeams() {
		List<GymLeader> kantoLeaders = gymLeaderRepository.findByGenerationOrderByBadgeAsc(1);

		// Brock: Geodude no nível 12, que evolui até o Golem
		TeamPokemon geodude = kantoLeaders.get(0).getTeam().get(0);
		assertEquals("Geodude", geodude.getName());
		assertEquals(12, geodude.getLevel());
		assertEquals("Golem", geodude.getEvolutions().get(2).name());

		// Sabrina: o nome "Mr. Mime" vira o arquivo "mr-mime.png"
		TeamPokemon mrMime = kantoLeaders.get(5).getTeam().get(1);
		assertEquals("https://img.pokemondb.net/sprites/home/normal/mr-mime.png", mrMime.getImageUrl());

		// Último da lista: Marshal, da Elite dos 4 de Unova, começa com o Throh
		EliteFourMember marshal = eliteFourMemberRepository.findByGenerationOrderByPositionAsc(5).get(3);
		assertEquals("Marshal", marshal.getName());
		assertEquals("Throh", marshal.getTeam().get(0).getName());
	}

	// Cria a conta e entra com o mesmo nome (maiúsculas e espaços não importam)
	@Test
	void loginWithTheSameName() {
		trainerService.create("Ash");

		assertEquals("Ash", trainerService.login(" ash ").getName());
		assertThrows(ResourceNotFoundException.class, () -> trainerService.login("Misty"));
		assertThrows(ResponseStatusException.class, () -> trainerService.create("ASH"));
		assertThrows(ResponseStatusException.class, () -> trainerService.create("   "));
	}

}
