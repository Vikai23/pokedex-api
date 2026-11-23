package com.vinicius.pokedex_api.service;

import com.vinicius.pokedex_api.entity.Pokemon;
import com.vinicius.pokedex_api.exception.ResourceNotFoundException;
import com.vinicius.pokedex_api.repository.PokemonRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PokemonService {

    private final PokemonRepository pokemonRepository;

    public PokemonService(PokemonRepository pokemonRepository) {
        this.pokemonRepository = pokemonRepository;
    }

    public List<Pokemon> findAll() {
        return pokemonRepository.findAll(Sort.by("id"));
    }

    public List<Pokemon> findStarters() {
        return pokemonRepository.findByStarterTrueOrderByIdAsc();
    }

    public Pokemon findById(Integer id) {
        return pokemonRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Pokémon não encontrado: " + id));
    }

    // A linha de evolução inteira do Pokémon (ex: Ivysaur devolve Bulbasaur, Ivysaur e Venusaur)
    public List<Pokemon> findEvolutions(Integer id) {
        Pokemon pokemon = findById(id);
        return pokemonRepository.findByFirstStageIdOrderByIdAsc(pokemon.getFirstStageId());
    }
}
