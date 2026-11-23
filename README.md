# pokedex-api

API REST da **Pokédex dos Iniciais**, feita com Spring Boot. Guarda as 5 primeiras gerações, os 3 iniciais de cada uma com as evoluções (45 Pokémon), e os líderes de ginásio. É a API que o [app mobile](https://github.com/Vikai23/mobile) consome.

## Tecnologias

- Java 21 · Maven · Spring Boot 4.1.1
- Spring Web MVC · Spring Data JPA · Hibernate
- H2 (banco em memória, não precisa instalar nada)
- Springdoc OpenAPI / Swagger UI

## Como executar

Requisito: **JDK 21 ou superior**. O Maven já vem junto no projeto (`mvnw`).

```bash
# Windows
mvnw.cmd spring-boot:run

# Linux / macOS
./mvnw spring-boot:run
```

A API sobe em `http://localhost:8080`. Abrindo esse endereço no navegador, você cai direto no Swagger.

| Recurso | URL |
| :-- | :-- |
| Swagger UI | http://localhost:8080/swagger-ui/index.html |
| OpenAPI (JSON) | http://localhost:8080/v3/api-docs |

## Dados

O banco é o H2 em memória. Toda vez que a API sobe, o Hibernate cria as tabelas e o Spring carrega o arquivo [`src/main/resources/data.sql`](src/main/resources/data.sql) com:

- as 5 gerações (região, jogos, onde conseguir os iniciais e o mapa);
- os 45 Pokémon: os 15 iniciais e as evoluções, com categoria e descrição em português, tipos, altura, peso e nível de evolução;
- os 40 líderes de ginásio (8 por geração).

As imagens dos Pokémon são as artes oficiais que ficam no GitHub (repositório `PokeAPI/sprites`). O link é montado no campo `imageUrl` a partir do número do Pokémon.

## Modelo de dados

| Entidade | Descrição |
| :-- | :-- |
| `Generation` | Uma geração: região, jogos, onde conseguir os iniciais e o mapa |
| `Pokemon` | Um inicial ou uma evolução. `starter` diz se é inicial, `firstStageId` liga os Pokémon da mesma linha de evolução e `evolutionLevel` é o nível em que ele evolui |
| `GymLeader` | Um líder de ginásio de uma geração, com a ordem da insígnia (`badge`) e os tipos que usa |

## Endpoints

Todos são `GET`.

| Endpoint | O que devolve |
| :-- | :-- |
| `/generations` | As 5 gerações |
| `/generations/{id}` | Uma geração |
| `/generations/{id}/starters` | Os 3 iniciais da geração |
| `/generations/{id}/gym-leaders` | Os 8 líderes de ginásio da geração |
| `/pokemon` | Os 45 Pokémon |
| `/pokemon/starters` | Os 15 iniciais |
| `/pokemon/{id}` | Um Pokémon (o id é o número na Pokédex, ex: `1` é o Bulbasaur) |
| `/pokemon/{id}/evolutions` | A linha de evolução do Pokémon, do primeiro ao último estágio |

Exemplo de `GET /pokemon/4`:

```json
{
  "id": 4,
  "name": "Charmander",
  "category": "Pokémon Lagarto",
  "description": "A chama na ponta da cauda acompanha o humor dele...",
  "type1": "fire",
  "type2": null,
  "height": 0.6,
  "weight": 8.5,
  "generation": 1,
  "starter": true,
  "firstStageId": 4,
  "evolutionLevel": null,
  "imageUrl": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png"
}
```

## Erros

Todo erro tem o mesmo formato:

```json
{
  "status": 404,
  "error": "Not Found",
  "message": "Pokémon não encontrado: 999",
  "timestamp": "2026-11-23T10:16:33"
}
```

| Status | Quando |
| :-- | :-- |
| `200 OK` | Deu certo |
| `400 Bad Request` | O id não é um número (ex: `/pokemon/abc`) |
| `404 Not Found` | Não existe nada com esse id, ou o caminho não existe (ex: `/pokemons`) |

## Colocar online (Render)

O projeto tem `Dockerfile` e `render.yaml`. No [Render](https://render.com), crie um **Web Service** a partir deste repositório (runtime Docker, plano free). Depois coloque o link que o Render der no `API_URL` do app.

## Estrutura

```
src/main/java/com/vinicius/pokedex_api/
├── controller/    GenerationController e PokemonController (os endpoints)
├── service/       regras de busca e o erro 404
├── repository/    acesso ao banco (Spring Data JPA)
├── entity/        Generation, Pokemon e GymLeader
├── dto/           ErrorResponse (corpo dos erros)
└── exception/     ResourceNotFoundException e GlobalExceptionHandler
src/main/resources/
├── application.properties
└── data.sql       dados carregados quando a API sobe
```
