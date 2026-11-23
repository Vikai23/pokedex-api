package com.vinicius.pokedex_api.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

// Um líder de ginásio de uma geração
@Entity
public class GymLeader {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Número da geração
    private Integer generation;

    // Ordem da insígnia (1 a 8)
    private Integer badge;

    private String name;

    private String city;

    // Tipos de Pokémon que ele usa, separados por vírgula (ex: "rock" ou "grass,fire,water")
    private String types;

    public GymLeader() {
    }

    public Long getId() {
        return id;
    }

    public Integer getGeneration() {
        return generation;
    }

    public Integer getBadge() {
        return badge;
    }

    public String getName() {
        return name;
    }

    public String getCity() {
        return city;
    }

    public String getTypes() {
        return types;
    }
}
