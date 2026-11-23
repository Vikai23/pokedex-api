package com.vinicius.pokedex_api.repository;

import com.vinicius.pokedex_api.entity.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface TrainerRepository extends JpaRepository<Trainer, Long> {

    // Procura pelo nome sem ligar para maiúsculas e minúsculas ("Ash" e "ash" são o mesmo)
    Optional<Trainer> findByNameIgnoreCase(String name);
}
