package com.vinicius.pokedex_api.entity;

import jakarta.persistence.Column;
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

    // Onde fica a cidade na imagem do mapa da região, em pixels.
    // O nome da coluna fica escrito porque o Hibernate transformaria "mapX" em "mapx".
    @Column(name = "map_x")
    private Integer mapX;

    @Column(name = "map_y")
    private Integer mapY;

    // Sprite do treinador (imagem do Pokémon Showdown)
    private String spriteUrl;

    // Insígnia do ginásio: nome em português, nome original do jogo e imagem
    private String badgeName;
    private String badgeOriginalName;
    private String badgeImageUrl;

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

    public Integer getMapX() {
        return mapX;
    }

    public Integer getMapY() {
        return mapY;
    }

    public String getSpriteUrl() {
        return spriteUrl;
    }

    public String getBadgeName() {
        return badgeName;
    }

    public String getBadgeOriginalName() {
        return badgeOriginalName;
    }

    public String getBadgeImageUrl() {
        return badgeImageUrl;
    }
}
