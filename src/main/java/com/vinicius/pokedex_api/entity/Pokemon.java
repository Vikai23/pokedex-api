package com.vinicius.pokedex_api.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

// Um Pokémon da Pokédex: um dos iniciais ou uma das evoluções dele
@Entity
public class Pokemon {

    // Pasta com as imagens oficiais dos Pokémon (ficam no GitHub)
    private static final String IMAGE_FOLDER =
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/";

    // Número na Pokédex Nacional (ex: 1 é o Bulbasaur)
    @Id
    private Integer id;

    private String name;

    // Categoria em português (ex: Pokémon Semente)
    private String category;

    // Descrição em português
    @Column(length = 500)
    private String description;

    // Tipos em inglês (ex: grass). O segundo tipo pode ser null.
    private String type1;
    private String type2;

    // Altura em metros e peso em quilos
    private Double height;
    private Double weight;

    // Número da geração em que o Pokémon apareceu
    private Integer generation;

    // true se for um dos 3 iniciais da geração
    private Boolean starter;

    // Número do primeiro Pokémon da linha de evolução
    // (ex: Bulbasaur, Ivysaur e Venusaur têm todos o número 1)
    private Integer firstStageId;

    // Nível em que ele evolui (null no primeiro estágio)
    private Integer evolutionLevel;

    public Pokemon() {
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getCategory() {
        return category;
    }

    public String getDescription() {
        return description;
    }

    public String getType1() {
        return type1;
    }

    public String getType2() {
        return type2;
    }

    public Double getHeight() {
        return height;
    }

    public Double getWeight() {
        return weight;
    }

    public Integer getGeneration() {
        return generation;
    }

    public Boolean getStarter() {
        return starter;
    }

    public Integer getFirstStageId() {
        return firstStageId;
    }

    public Integer getEvolutionLevel() {
        return evolutionLevel;
    }

    // Link da imagem oficial, montado com o número do Pokémon.
    // Não fica salvo no banco, mas aparece no JSON como "imageUrl".
    public String getImageUrl() {
        return IMAGE_FOLDER + id + ".png";
    }
}
