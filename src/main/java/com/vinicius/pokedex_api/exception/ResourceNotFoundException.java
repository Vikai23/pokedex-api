package com.vinicius.pokedex_api.exception;

// Usada quando não existe nada com o id pedido. Vira um erro 404.
public class ResourceNotFoundException extends RuntimeException {

    public ResourceNotFoundException(String message) {
        super(message);
    }
}
