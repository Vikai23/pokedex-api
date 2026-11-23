package com.vinicius.pokedex_api.entity;

import com.vinicius.pokedex_api.dto.EvolutionStage;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import java.util.ArrayList;
import java.util.List;

// Um Pokémon do time de um líder de ginásio ou de um membro da Elite dos 4.
// A ligação com o treinador fica nas colunas gym_leader_id e elite_four_member_id
// (veja o campo "team" em GymLeader e em EliteFourMember).
@Entity
public class TeamPokemon {

    // Mesma pasta de imagens da Pokédex (estilo do Pokémon HOME)
    private static final String IMAGE_FOLDER = "https://img.pokemondb.net/sprites/home/normal/";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Ordem no time (1 é o primeiro que entra na batalha)
    private Integer slot;

    private String name;

    private Integer level;

    // Tipos separados por vírgula (ex: "rock,ground")
    private String types;

    // Observação quando o Pokémon depende de uma escolha do jogador (ex: o inicial escolhido)
    private String note;

    // Linha de evolução, do primeiro ao último estágio, separada por vírgula
    // (ex: "Geodude,Graveler,Golem"). Não tem getter: no JSON ela aparece como "evolutions".
    private String evolutionLine;

    public TeamPokemon() {
    }

    public Long getId() {
        return id;
    }

    public Integer getSlot() {
        return slot;
    }

    public String getName() {
        return name;
    }

    public Integer getLevel() {
        return level;
    }

    public String getTypes() {
        return types;
    }

    public String getNote() {
        return note;
    }

    // Link da imagem do Pokémon. Aparece no JSON como "imageUrl".
    public String getImageUrl() {
        return imageUrlOf(name);
    }

    // A linha de evolução com o nome e a imagem de cada estágio.
    // Se o Pokémon não evolui, a lista tem só ele.
    public List<EvolutionStage> getEvolutions() {
        List<EvolutionStage> evolutions = new ArrayList<>();
        for (String stage : evolutionLine.split(",")) {
            evolutions.add(new EvolutionStage(stage, imageUrlOf(stage)));
        }
        return evolutions;
    }

    // Monta o link da imagem a partir do nome.
    // Ex: "Mr. Mime" vira "mr-mime.png" e "Nidoran♀" vira "nidoran-f.png".
    private static String imageUrlOf(String name) {
        String fileName = name.toLowerCase()
                .replace("♀", "-f")
                .replace("♂", "-m")
                .replace(".", "")
                .replace("'", "")
                .replace(" ", "-");
        return IMAGE_FOLDER + fileName + ".png";
    }
}
