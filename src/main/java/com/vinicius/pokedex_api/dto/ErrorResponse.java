package com.vinicius.pokedex_api.dto;

import java.time.LocalDateTime;

// Corpo que a API devolve quando acontece um erro
public record ErrorResponse(
        int status,
        String error,
        String message,
        LocalDateTime timestamp
) {
}
