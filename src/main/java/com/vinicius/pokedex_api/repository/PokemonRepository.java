package com.vinicius.pokedex_api.repository;

import com.vinicius.pokedex_api.entity.Pokemon;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PokemonRepository extends JpaRepository<Pokemon, Integer> {

    // Os iniciais de todas as gerações
    List<Pokemon> findByStarterTrueOrderByIdAsc();

    // Os 3 iniciais de uma geração
    List<Pokemon> findByGenerationAndStarterTrueOrderByIdAsc(Integer generation);

    // Todos os Pokémon de uma linha de evolução, do primeiro ao último estágio
    List<Pokemon> findByFirstStageIdOrderByIdAsc(Integer firstStageId);
}
