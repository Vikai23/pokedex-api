package com.vinicius.pokedex_api.exception;

import com.vinicius.pokedex_api.dto.ErrorResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;
import org.springframework.web.servlet.resource.NoResourceFoundException;

import java.time.LocalDateTime;

// Transforma as exceções em respostas JSON com o status certo
@RestControllerAdvice
public class GlobalExceptionHandler {

    // Id que não existe (ex: /pokemon/999)
    @ExceptionHandler(ResourceNotFoundException.class)
    public ResponseEntity<ErrorResponse> notFound(ResourceNotFoundException ex) {
        return build(HttpStatus.NOT_FOUND, ex.getMessage());
    }

    // Caminho que não existe na API (ex: /pokemons)
    @ExceptionHandler(NoResourceFoundException.class)
    public ResponseEntity<ErrorResponse> pathNotFound(NoResourceFoundException ex) {
        return build(HttpStatus.NOT_FOUND, "Caminho não encontrado: /" + ex.getResourcePath());
    }

    // Id que não é número (ex: /pokemon/abc)
    @ExceptionHandler(MethodArgumentTypeMismatchException.class)
    public ResponseEntity<ErrorResponse> invalidParameter(MethodArgumentTypeMismatchException ex) {
        return build(HttpStatus.BAD_REQUEST, "Valor inválido para '" + ex.getName() + "': " + ex.getValue());
    }

    private ResponseEntity<ErrorResponse> build(HttpStatus status, String message) {
        ErrorResponse body = new ErrorResponse(status.value(), status.getReasonPhrase(), message, LocalDateTime.now());
        return ResponseEntity.status(status).body(body);
    }
}
