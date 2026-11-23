package com.vinicius.pokedex_api;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// O @OpenAPIDefinition dá o nome e a descrição que aparecem no topo do Swagger
@OpenAPIDefinition(info = @Info(
		title = "Pokédex dos Iniciais API",
		version = "1.0",
		description = "Gerações, iniciais, evoluções e líderes de ginásio das 5 primeiras gerações de Pokémon."
))
@SpringBootApplication
public class PokedexApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(PokedexApiApplication.class, args);
	}

}
