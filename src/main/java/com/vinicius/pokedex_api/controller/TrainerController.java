package com.vinicius.pokedex_api.controller;

import com.vinicius.pokedex_api.dto.TrainerRequest;
import com.vinicius.pokedex_api.entity.Trainer;
import com.vinicius.pokedex_api.service.TrainerService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

// O @CrossOrigin libera o acesso pelo navegador (versão web do app)
@RestController
@RequestMapping("/trainers")
@CrossOrigin(origins = "*")
public class TrainerController {

    private final TrainerService trainerService;

    public TrainerController(TrainerService trainerService) {
        this.trainerService = trainerService;
    }

    // GET /trainers: as contas criadas
    @GetMapping
    public ResponseEntity<List<Trainer>> findAll() {
        return ResponseEntity.ok(trainerService.findAll());
    }

    // POST /trainers com {"name": "Ash"}: cria a conta
    @PostMapping
    public ResponseEntity<Trainer> create(@RequestBody TrainerRequest request) {
        Trainer trainer = trainerService.create(request.name());
        return ResponseEntity.status(HttpStatus.CREATED).body(trainer);
    }

    // POST /trainers/login com {"name": "Ash"}: entra se a conta existir
    @PostMapping("/login")
    public ResponseEntity<Trainer> login(@RequestBody TrainerRequest request) {
        return ResponseEntity.ok(trainerService.login(request.name()));
    }
}
