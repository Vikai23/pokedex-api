package com.vinicius.pokedex_api.service;

import com.vinicius.pokedex_api.entity.Generation;
import com.vinicius.pokedex_api.entity.GymLeader;
import com.vinicius.pokedex_api.entity.Pokemon;
import com.vinicius.pokedex_api.exception.ResourceNotFoundException;
import com.vinicius.pokedex_api.repository.GenerationRepository;
import com.vinicius.pokedex_api.repository.GymLeaderRepository;
import com.vinicius.pokedex_api.repository.PokemonRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GenerationService {

    private final GenerationRepository generationRepository;
    private final PokemonRepository pokemonRepository;
    private final GymLeaderRepository gymLeaderRepository;

    public GenerationService(GenerationRepository generationRepository,
                             PokemonRepository pokemonRepository,
                             GymLeaderRepository gymLeaderRepository) {
        this.generationRepository = generationRepository;
        this.pokemonRepository = pokemonRepository;
        this.gymLeaderRepository = gymLeaderRepository;
    }

    public List<Generation> findAll() {
        return generationRepository.findAll(Sort.by("id"));
    }

    public Generation findById(Integer id) {
        return generationRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Geração não encontrada: " + id));
    }

    public List<Pokemon> findStarters(Integer id) {
        // Confere se a geração existe antes de buscar
        findById(id);
        return pokemonRepository.findByGenerationAndStarterTrueOrderByIdAsc(id);
    }

    public List<GymLeader> findGymLeaders(Integer id) {
        findById(id);
        return gymLeaderRepository.findByGenerationOrderByBadgeAsc(id);
    }
}
