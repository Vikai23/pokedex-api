package com.vinicius.pokedex_api.controller;

import com.vinicius.pokedex_api.entity.Pokemon;
import com.vinicius.pokedex_api.service.PokemonService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

// O @CrossOrigin libera o acesso pelo navegador (versão web do app)
@RestController
@RequestMapping("/pokemon")
@CrossOrigin(origins = "*")
public class PokemonController {

    private final PokemonService pokemonService;

    public PokemonController(PokemonService pokemonService) {
        this.pokemonService = pokemonService;
    }

    // GET /pokemon: os 45 Pokémon (iniciais e evoluções)
    @GetMapping
    public ResponseEntity<List<Pokemon>> findAll() {
        return ResponseEntity.ok(pokemonService.findAll());
    }

    // GET /pokemon/starters: os 15 iniciais das 5 gerações
    @GetMapping("/starters")
    public ResponseEntity<List<Pokemon>> findStarters() {
        return ResponseEntity.ok(pokemonService.findStarters());
    }

    // GET /pokemon/1: um Pokémon
    @GetMapping("/{id}")
    public ResponseEntity<Pokemon> findById(@PathVariable Integer id) {
        return ResponseEntity.ok(pokemonService.findById(id));
    }

    // GET /pokemon/1/evolutions: a linha de evolução do Pokémon
    @GetMapping("/{id}/evolutions")
    public ResponseEntity<List<Pokemon>> findEvolutions(@PathVariable Integer id) {
        return ResponseEntity.ok(pokemonService.findEvolutions(id));
    }
}
