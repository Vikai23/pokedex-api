package com.vinicius.pokedex_api.repository;

import com.vinicius.pokedex_api.entity.GymLeader;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GymLeaderRepository extends JpaRepository<GymLeader, Long> {

    // Os líderes de uma geração, na ordem das insígnias
    List<GymLeader> findByGenerationOrderByBadgeAsc(Integer generation);
}
