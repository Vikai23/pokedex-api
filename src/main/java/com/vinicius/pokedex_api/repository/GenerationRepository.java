package com.vinicius.pokedex_api.repository;

import com.vinicius.pokedex_api.entity.Generation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GenerationRepository extends JpaRepository<Generation, Integer> {
}
