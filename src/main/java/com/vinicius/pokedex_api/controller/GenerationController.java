package com.vinicius.pokedex_api.controller;

import com.vinicius.pokedex_api.entity.EliteFourMember;
import com.vinicius.pokedex_api.entity.Generation;
import com.vinicius.pokedex_api.entity.GymLeader;
import com.vinicius.pokedex_api.entity.Pokemon;
import com.vinicius.pokedex_api.service.GenerationService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

// O @CrossOrigin libera o acesso pelo navegador (versão web do app)
@RestController
@RequestMapping("/generations")
@CrossOrigin(origins = "*")
public class GenerationController {

    private final GenerationService generationService;

    public GenerationController(GenerationService generationService) {
        this.generationService = generationService;
    }

    // GET /generations: as 5 gerações
    @GetMapping
    public ResponseEntity<List<Generation>> findAll() {
        return ResponseEntity.ok(generationService.findAll());
    }

    // GET /generations/1: uma geração
    @GetMapping("/{id}")
    public ResponseEntity<Generation> findById(@PathVariable Integer id) {
        return ResponseEntity.ok(generationService.findById(id));
    }

    // GET /generations/1/starters: os 3 iniciais da geração
    @GetMapping("/{id}/starters")
    public ResponseEntity<List<Pokemon>> findStarters(@PathVariable Integer id) {
        return ResponseEntity.ok(generationService.findStarters(id));
    }

    // GET /generations/1/gym-leaders: os 8 líderes de ginásio da geração
    @GetMapping("/{id}/gym-leaders")
    public ResponseEntity<List<GymLeader>> findGymLeaders(@PathVariable Integer id) {
        return ResponseEntity.ok(generationService.findGymLeaders(id));
    }

    // GET /generations/1/elite-four: os 4 membros da Elite dos 4 da geração
    @GetMapping("/{id}/elite-four")
    public ResponseEntity<List<EliteFourMember>> findEliteFour(@PathVariable Integer id) {
        return ResponseEntity.ok(generationService.findEliteFour(id));
    }
}
