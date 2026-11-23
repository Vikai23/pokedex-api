package com.vinicius.pokedex_api.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// Quem abre o endereço da API no navegador (ex: http://localhost:8080)
// vai direto para o Swagger, que mostra todos os endpoints
@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "redirect:/swagger-ui/index.html";
    }
}
