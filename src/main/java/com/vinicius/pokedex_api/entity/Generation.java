package com.vinicius.pokedex_api.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

// Uma geração dos jogos (ex: a 1ª geração, da região de Kanto)
@Entity
public class Generation {

    // Número da geração (1 a 5)
    @Id
    private Integer id;

    // Nome da região (ex: Kanto)
    private String region;

    // Jogos da geração (ex: Red, Blue e Yellow)
    private String games;

    // Remakes dos jogos da região (ex: FireRed e LeafGreen). Fica null se não tiver.
    private String remakes;

    // Onde conseguir os iniciais no jogo
    @Column(length = 500)
    private String starterLocation;

    // Imagem do mapa da região e o tamanho dela em pixels
    private String mapUrl;
    private Integer mapWidth;
    private Integer mapHeight;

    // Quanto da altura do mapa o app deve mostrar (null mostra a imagem inteira)
    private Integer mapVisibleHeight;

    // Jogos que a lista de líderes de ginásio segue
    private String gymGames;

    // Jogos de onde vêm os times dos líderes e da Elite dos 4.
    // É separado porque os times mudam nos jogos de depois (ex: no Yellow e no Emerald).
    private String teamGames;

    public Generation() {
    }

    public Integer getId() {
        return id;
    }

    public String getRegion() {
        return region;
    }

    public String getGames() {
        return games;
    }

    public String getRemakes() {
        return remakes;
    }

    public String getStarterLocation() {
        return starterLocation;
    }

    public String getMapUrl() {
        return mapUrl;
    }

    public Integer getMapWidth() {
        return mapWidth;
    }

    public Integer getMapHeight() {
        return mapHeight;
    }

    public Integer getMapVisibleHeight() {
        return mapVisibleHeight;
    }

    public String getGymGames() {
        return gymGames;
    }

    public String getTeamGames() {
        return teamGames;
    }
}
