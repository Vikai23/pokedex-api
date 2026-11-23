package com.vinicius.pokedex_api.service;

import com.vinicius.pokedex_api.entity.Trainer;
import com.vinicius.pokedex_api.exception.ResourceNotFoundException;
import com.vinicius.pokedex_api.repository.TrainerRepository;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Service
public class TrainerService {

    private final TrainerRepository trainerRepository;

    public TrainerService(TrainerRepository trainerRepository) {
        this.trainerRepository = trainerRepository;
    }

    public List<Trainer> findAll() {
        return trainerRepository.findAll(Sort.by("id"));
    }

    // Cria a conta. O nome não pode estar vazio nem já existir.
    public Trainer create(String name) {
        String cleanName = checkName(name);

        if (trainerRepository.findByNameIgnoreCase(cleanName).isPresent()) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "Já existe uma conta com esse nome.");
        }
        return trainerRepository.save(new Trainer(cleanName));
    }

    // Entra na conta: o nome precisa ser igual ao usado na hora de criar
    public Trainer login(String name) {
        String cleanName = checkName(name);

        return trainerRepository.findByNameIgnoreCase(cleanName)
                .orElseThrow(() -> new ResourceNotFoundException(
                        "Nenhuma conta com esse nome. Crie uma conta primeiro."));
    }

    // Tira os espaços das pontas do nome e confere se sobrou alguma coisa
    private String checkName(String name) {
        if (name == null || name.isBlank()) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Digite um nome.");
        }
        return name.trim();
    }
}
