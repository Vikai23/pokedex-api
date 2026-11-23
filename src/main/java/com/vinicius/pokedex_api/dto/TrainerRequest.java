package com.vinicius.pokedex_api.dto;

// O que o app manda para criar a conta ou para entrar: só o nome
public record TrainerRequest(String name) {
}
