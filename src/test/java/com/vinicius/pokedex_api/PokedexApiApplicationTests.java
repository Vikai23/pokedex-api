package com.vinicius.pokedex_api;

import com.vinicius.pokedex_api.entity.Pokemon;
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

	// Confere os links das imagens normal e shiny
	@Test
	void buildsImageLinks() {
		Pokemon charmander = pokemonRepository.findById(4).orElseThrow();

		assertEquals("https://img.pokemondb.net/sprites/home/normal/charmander.png", charmander.getImageUrl());
		assertEquals("https://img.pokemondb.net/sprites/home/shiny/charmander.png", charmander.getShinyImageUrl());
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
