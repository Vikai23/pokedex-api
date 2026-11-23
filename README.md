# pokedex-api

API REST da **Pokédex dos Iniciais**, feita com Spring Boot. Guarda as 5 primeiras gerações, os 3 iniciais de cada uma com as evoluções (45 Pokémon), os líderes de ginásio e as contas dos treinadores. É a API que o [app mobile](https://github.com/Vikai23/mobile) consome.

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

- as 5 gerações (região, jogos, remakes, onde conseguir os iniciais e o mapa);
- os 45 Pokémon: os 15 iniciais e as evoluções, com categoria e descrição em português, tipos, altura, peso e nível de evolução;
- os 40 líderes de ginásio (8 por geração), com a posição da cidade no mapa, o sprite e a insígnia;
- os 20 membros da Elite dos 4 (4 por geração), com o lugar da liga no mapa e o sprite.

As posições no mapa (`mapX` e `mapY`, em pixels da imagem do mapa) vêm das áreas clicáveis dos mapas do Serebii.net. Os sprites dos treinadores são os do Pokémon Showdown, e as imagens das insígnias vêm do repositório `PokeAPI/sprites`. Os nomes das insígnias em português são traduções; o nome original do jogo fica em `badgeOriginalName`.

Os nomes de lugares e pessoas seguem a dublagem brasileira do anime (ex: Professor Carvalho, Cidade de Pallet, Rota 24, Tenente Surge). Os nomes dos Pokémon e dos jogos ficam como no original.

As imagens dos Pokémon são as do estilo do Pokémon HOME, do site PokémonDB (256x256, uns 37 KB cada, bem mais leves que as artes oficiais). O link é montado no campo `imageUrl` a partir do nome do Pokémon, e o da versão shiny (a cor rara) fica em `shinyImageUrl`.

As contas dos treinadores começam vazias e são criadas pelo app. Como o banco é em memória, elas somem quando a API é reiniciada.

## Modelo de dados

| Entidade | Descrição |
| :-- | :-- |
| `Generation` | Uma geração: região, jogos, remakes (fica `null` se não tiver), onde conseguir os iniciais e o mapa |
| `Pokemon` | Um inicial ou uma evolução. `starter` diz se é inicial, `firstStageId` liga os Pokémon da mesma linha de evolução e `evolutionLevel` é o nível em que ele evolui |
| `GymLeader` | Um líder de ginásio de uma geração: ordem da insígnia (`badge`), cidade, tipos, posição no mapa, sprite e a insígnia (nome e imagem) |
| `EliteFourMember` | Um membro da Elite dos 4: ordem do desafio (`position`), lugar da liga, tipos, posição no mapa e sprite. A de Johto fica em Kanto, então `mapX` e `mapY` vêm `null` |
| `Trainer` | A conta de um treinador: só o nome, que não pode repetir |

## Endpoints

### Contas

A conta tem só o nome. Para entrar, basta mandar o mesmo nome usado para criar a conta (maiúsculas e espaços nas pontas não importam).

| Endpoint | O que faz |
| :-- | :-- |
| `GET /trainers` | Lista as contas criadas |
| `POST /trainers` | Cria a conta. Corpo: `{"name": "Ash"}`. Devolve `201`, ou `409` se o nome já existir |
| `POST /trainers/login` | Entra na conta. Corpo: `{"name": "Ash"}`. Devolve `200`, ou `404` se não existir conta com esse nome |

### Pokédex

Todos são `GET`.

| Endpoint | O que devolve |
| :-- | :-- |
| `/generations` | As 5 gerações |
| `/generations/{id}` | Uma geração |
| `/generations/{id}/starters` | Os 3 iniciais da geração |
| `/generations/{id}/gym-leaders` | Os 8 líderes de ginásio da geração |
| `/generations/{id}/elite-four` | Os 4 membros da Elite dos 4 da geração |
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
  "imageUrl": "https://img.pokemondb.net/sprites/home/normal/charmander.png",
  "shinyImageUrl": "https://img.pokemondb.net/sprites/home/shiny/charmander.png"
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
| `201 Created` | Conta criada |
| `400 Bad Request` | O id não é um número (ex: `/pokemon/abc`), o nome veio vazio ou o JSON está errado |
| `404 Not Found` | Não existe nada com esse id, não existe conta com esse nome, ou o caminho não existe (ex: `/pokemons`) |
| `409 Conflict` | Já existe uma conta com esse nome |

## Colocar online (Render)

O projeto tem `Dockerfile` e `render.yaml`. No [Render](https://render.com), crie um **Web Service** a partir deste repositório (runtime Docker, plano free). Depois coloque o link que o Render der no `API_URL` do app.

## Estrutura

```
src/main/java/com/vinicius/pokedex_api/
├── controller/    GenerationController, PokemonController, TrainerController e HomeController
├── service/       regras de busca, de criar conta e de entrar
├── repository/    acesso ao banco (Spring Data JPA)
├── entity/        Generation, Pokemon, GymLeader, EliteFourMember e Trainer
├── dto/           ErrorResponse (corpo dos erros) e TrainerRequest (o nome enviado pelo app)
└── exception/     ResourceNotFoundException e GlobalExceptionHandler
src/main/resources/
├── application.properties
└── data.sql       dados carregados quando a API sobe
```
