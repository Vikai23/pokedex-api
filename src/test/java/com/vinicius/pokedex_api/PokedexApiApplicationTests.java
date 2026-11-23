package com.vinicius.pokedex_api;

import com.vinicius.pokedex_api.repository.GenerationRepository;
import com.vinicius.pokedex_api.repository.GymLeaderRepository;
import com.vinicius.pokedex_api.repository.PokemonRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
class PokedexApiApplicationTests {

	@Autowired
	private GenerationRepository generationRepository;

	@Autowired
	private PokemonRepository pokemonRepository;

	@Autowired
	private GymLeaderRepository gymLeaderRepository;

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
	}

}
