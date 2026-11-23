package com.vinicius.pokedex_api.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

// Um membro da Elite dos 4 de uma geração
@Entity
public class EliteFourMember {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Número da geração
    private Integer generation;

    // Ordem em que ele é enfrentado (1 a 4)
    private Integer position;

    private String name;

    // Onde a Elite dos 4 fica (ex: Platô Índigo)
    private String place;

    // Tipos de Pokémon que ele usa, separados por vírgula
    private String types;

    // Onde fica o lugar na imagem do mapa da região, em pixels.
    // Fica null quando o lugar não aparece no mapa (a de Johto fica em Kanto).
    // O nome da coluna fica escrito porque o Hibernate transformaria "mapX" em "mapx".
    @Column(name = "map_x")
    private Integer mapX;

    @Column(name = "map_y")
    private Integer mapY;

    // Sprite do treinador (imagem do Pokémon Showdown)
    private String spriteUrl;

    public EliteFourMember() {
    }

    public Long getId() {
        return id;
    }

    public Integer getGeneration() {
        return generation;
    }

    public Integer getPosition() {
        return position;
    }

    public String getName() {
        return name;
    }

    public String getPlace() {
        return place;
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
}
