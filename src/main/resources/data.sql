-- Dados da Pokédex dos Iniciais
-- O Spring roda este arquivo toda vez que a API sobe, depois de criar as tabelas.

-- As 5 gerações. Os nomes de lugares e pessoas seguem a dublagem brasileira do anime
-- (ex: Professor Carvalho, Cidade de Pallet, Rota 24).
-- "remakes" são as versões novas dos jogos da região (a Unova ainda não tem).
INSERT INTO generation (id, region, games, remakes, starter_location, map_url, map_width, map_height, map_visible_height, gym_games, team_games) VALUES
(1, 'Kanto', 'Red, Blue e Yellow', 'FireRed e LeafGreen (2004) e Let''s Go, Pikachu! e Let''s Go, Eevee! (2018)', 'No laboratório do Professor Carvalho, na Cidade de Pallet, logo no começo do jogo. No Yellow você começa com um Pikachu (e no Let''s Go, com o Pikachu ou o Eevee) e ganha os três depois: o Bulbasaur na Cidade de Cerulean, o Charmander na Rota 24 e o Squirtle na Cidade de Vermilion.', 'https://www.serebii.net/pokearth/kanto.png', 200, 618, 150, 'Red, Blue e Yellow', 'Red e Blue'),
(2, 'Johto', 'Gold, Silver e Crystal', 'HeartGold e SoulSilver (2009)', 'No laboratório do Professor Elm, na Cidade de New Bark, logo no começo do jogo. No HeartGold e no SoulSilver também é assim.', 'https://www.serebii.net/pokearth/johto.png', 166, 144, NULL, 'Gold, Silver e Crystal', 'Gold e Silver'),
(3, 'Hoenn', 'Ruby, Sapphire e Emerald', 'Omega Ruby e Alpha Sapphire (2014)', 'Na Rota 101, logo ao sair da Cidade de Littleroot. O Professor Birch está sendo atacado por um Pokémon selvagem e você pega um dos três na bolsa dele para ajudar. No Omega Ruby e no Alpha Sapphire acontece a mesma coisa.', 'https://www.serebii.net/pokearth/hoenn.png', 306, 221, NULL, 'Ruby, Sapphire e Emerald', 'Ruby e Sapphire'),
(4, 'Sinnoh', 'Diamond, Pearl e Platinum', 'Brilliant Diamond e Shining Pearl (2021)', 'Na Rota 201, perto do Lago Verity. Você escolhe um dos três da maleta do Professor Rowan. No Brilliant Diamond e no Shining Pearl também é assim.', 'https://www.serebii.net/pokearth/sinnoh.png', 216, 168, NULL, 'Diamond e Pearl', 'Diamond e Pearl'),
(5, 'Unova', 'Black, White, Black 2 e White 2', NULL, 'Na sua casa, na Cidade de Nuvema. A Professora Juniper manda uma caixa de presente com os três e você escolhe primeiro, antes do Cheren e da Bianca. No Black 2 e White 2 quem entrega é a Bianca, na Cidade de Aspertia.', 'https://www.serebii.net/pokearth/unova.png', 256, 168, NULL, 'Black e White', 'Black e White');

-- Kanto: os 3 iniciais e as evoluções
INSERT INTO pokemon (id, name, category, description, type1, type2, height, weight, generation, starter, first_stage_id, evolution_level) VALUES
(1, 'Bulbasaur', 'Pokémon Semente', 'Já nasce com uma semente nas costas, que cresce junto com ele. Por isso adora tirar sonecas no sol.', 'grass', 'poison', 0.7, 6.9, 1, TRUE, 1, NULL),
(2, 'Ivysaur', 'Pokémon Semente', 'Para aguentar o peso do botão de flor nas costas, as patas dele ficam grossas e fortes. Quando o botão solta um perfume, é sinal de que a flor vai abrir.', 'grass', 'poison', 1, 13, 1, FALSE, 1, 16),
(3, 'Venusaur', 'Pokémon Semente', 'A flor das costas se abre quando ele absorve bastante luz do sol e fica mais colorida quanto mais bem cuidado ele é. O perfume dela acalma quem está por perto.', 'grass', 'poison', 2, 100, 1, FALSE, 1, 32),
(4, 'Charmander', 'Pokémon Lagarto', 'A chama na ponta da cauda acompanha o humor dele e mostra se ele está bem de saúde. Se ela se apagar, é o fim do Charmander.', 'fire', NULL, 0.6, 8.5, 1, TRUE, 4, NULL),
(5, 'Charmeleon', 'Pokémon Chama', 'Quando encontra um adversário forte, fica agitado e a chama da cauda chega a ficar branco-azulada. Luta usando as garras afiadas.', 'fire', NULL, 1.1, 19, 1, FALSE, 4, 16),
(6, 'Charizard', 'Pokémon Chama', 'Suas asas levam ele a quase 1.400 metros de altura. Cospe um fogo capaz de derreter pedras, que fica mais quente a cada batalha difícil.', 'fire', 'flying', 1.7, 90.5, 1, FALSE, 4, 36),
(7, 'Squirtle', 'Pokémon Tartaruga Pequena', 'O casco arredondado ajuda a nadar bem rápido. Quando se sente em perigo, se esconde dentro dele e revida com jatos de água.', 'water', NULL, 0.5, 9, 1, TRUE, 7, NULL),
(8, 'Wartortle', 'Pokémon Tartaruga', 'A cauda peluda é vista como símbolo de vida longa, e os mais velhos têm até algas no casco. Usa as orelhas e a cauda para se equilibrar enquanto nada.', 'water', NULL, 1, 22.5, 1, FALSE, 7, 16),
(9, 'Blastoise', 'Pokémon Marisco', 'Os canhões do casco disparam jatos de água tão fortes que furam aço. Ele deixa o corpo pesado de propósito para aguentar o tranco dos disparos.', 'water', NULL, 1.6, 85.5, 1, FALSE, 7, 36);

-- Johto: os 3 iniciais e as evoluções
INSERT INTO pokemon (id, name, category, description, type1, type2, height, weight, generation, starter, first_stage_id, evolution_level) VALUES
(152, 'Chikorita', 'Pokémon Folha', 'Usa a folha da cabeça para sentir a temperatura e a umidade do ar. É calmo e adora passar o dia tomando sol.', 'grass', NULL, 0.9, 6.4, 2, TRUE, 152, NULL),
(153, 'Bayleef', 'Pokémon Folha', 'As folhas em volta do pescoço soltam um cheiro de tempero que deixa quem sente mais animado e cheio de energia.', 'grass', NULL, 1.2, 15.8, 2, FALSE, 152, 16),
(154, 'Meganium', 'Pokémon Erva', 'O perfume das pétalas acalma os ânimos de quem está por perto, e o sopro dele consegue fazer plantas murchas voltarem à vida.', 'grass', NULL, 1.8, 100.5, 2, FALSE, 152, 32),
(155, 'Cyndaquil', 'Pokémon Rato de Fogo', 'É tímido e costuma ficar encolhido. Quando leva um susto ou fica bravo, as chamas das costas acendem na hora.', 'fire', NULL, 0.5, 7.9, 2, TRUE, 155, NULL),
(156, 'Quilava', 'Pokémon Vulcão', 'O pelo dele não pega fogo, então aguenta qualquer ataque de chamas. Mantém os inimigos longe com o calor que solta pelo corpo.', 'fire', NULL, 0.9, 19, 2, FALSE, 155, 14),
(157, 'Typhlosion', 'Pokémon Vulcão', 'Quando fica furioso, esquenta tanto o ar que some atrás de uma névoa de calor. Também pode causar explosões esfregando os pelos em chamas.', 'fire', NULL, 1.7, 79.5, 2, FALSE, 155, 36),
(158, 'Totodile', 'Pokémon Mandíbula Grande', 'É pequeno, mas tem uma mordida fortíssima. Morde tudo o que se mexe, então até o próprio treinador precisa tomar cuidado.', 'water', NULL, 0.6, 9.5, 2, TRUE, 158, NULL),
(159, 'Croconaw', 'Pokémon Mandíbula Grande', 'Quando morde, não solta mais. Se perder um dente, logo nasce outro no lugar: ele sempre tem 48 dentes.', 'water', NULL, 1.1, 25, 2, FALSE, 158, 18),
(160, 'Feraligatr', 'Pokémon Mandíbula Grande', 'Abre a boca enorme para assustar os inimigos. Apesar de pesado, corre muito rápido usando as patas de trás.', 'water', NULL, 2.3, 88.8, 2, FALSE, 158, 30);

-- Hoenn: os 3 iniciais e as evoluções
INSERT INTO pokemon (id, name, category, description, type1, type2, height, weight, generation, starter, first_stage_id, evolution_level) VALUES
(252, 'Treecko', 'Pokémon Lagartixa', 'Tem pequenos ganchos embaixo das patas que deixam ele subir em paredes. É calmo e nunca se assusta: se um inimigo maior encarar, ele encara de volta.', 'grass', NULL, 0.5, 5, 3, TRUE, 252, NULL),
(253, 'Grovyle', 'Pokémon Lagartixa', 'As folhas do corpo ajudam a se camuflar na floresta. Pula de galho em galho tão rápido que nenhum Pokémon consegue alcançá-lo.', 'grass', NULL, 0.9, 21.6, 3, FALSE, 252, 16),
(254, 'Sceptile', 'Pokémon Floresta', 'As folhas dos braços cortam como espadas. As sementes das costas são cheias de nutrientes e ajudam as árvores da floresta a crescer.', 'grass', NULL, 1.7, 52.2, 3, FALSE, 252, 36),
(255, 'Torchic', 'Pokémon Filhote de Ave', 'Guarda uma chama dentro do corpo, então dá para sentir o calor quando você abraça ele. Segue o treinador para todo lado com passos desengonçados.', 'fire', NULL, 0.4, 2.5, 3, TRUE, 255, NULL),
(256, 'Combusken', 'Pokémon Ave Jovem', 'Solta chamas pelo bico e dá chutes muito fortes. O grito dele é tão alto que distrai os adversários.', 'fire', 'fighting', 0.9, 19.5, 3, FALSE, 255, 16),
(257, 'Blaziken', 'Pokémon Labareda', 'Tem pernas tão fortes que pula um prédio de 30 andares. Quanto mais forte o inimigo, mais forte queimam as chamas dos pulsos.', 'fire', 'fighting', 1.9, 52, 3, FALSE, 255, 36),
(258, 'Mudkip', 'Pokémon Peixe da Lama', 'A barbatana da cabeça funciona como um radar e sente tudo o que acontece em volta. Respira debaixo d''água pelas guelras das bochechas.', 'water', NULL, 0.4, 7.6, 3, TRUE, 258, NULL),
(259, 'Marshtomp', 'Pokémon Peixe da Lama', 'O corpo coberto por uma película grudenta deixa ele viver fora da água. É mais rápido andando na lama do que nadando.', 'water', 'ground', 0.7, 28, 3, FALSE, 258, 16),
(260, 'Swampert', 'Pokémon Peixe da Lama', 'É tão forte que arrasta pedras de mais de uma tonelada. Sente pelas barbatanas quando uma tempestade está chegando.', 'water', 'ground', 1.5, 81.9, 3, FALSE, 258, 36);

-- Sinnoh: os 3 iniciais e as evoluções
INSERT INTO pokemon (id, name, category, description, type1, type2, height, weight, generation, starter, first_stage_id, evolution_level) VALUES
(387, 'Turtwig', 'Pokémon Folha Pequena', 'O casco é feito de terra e endurece quando ele bebe água. Se estiver com sede, a folha da cabeça murcha.', 'grass', NULL, 0.4, 10.2, 4, TRUE, 387, NULL),
(388, 'Grotle', 'Pokémon Bosque', 'Os arbustos do casco crescem com a luz do sol. Sabe onde nasce água limpa e leva outros Pokémon até lá nas costas.', 'grass', NULL, 1.1, 97, 4, FALSE, 387, 18),
(389, 'Torterra', 'Pokémon Continente', 'Carrega uma árvore nas costas, e Pokémon pequenos às vezes fazem ninho nela. Antigamente, as pessoas imaginavam que um Torterra gigante vivia embaixo da terra.', 'grass', 'ground', 2.2, 310, 4, FALSE, 387, 32),
(390, 'Chimchar', 'Pokémon Chimpanzé', 'A chama da cauda é alimentada por um gás da barriga e não apaga nem na chuva. Sobe em penhascos com muita agilidade.', 'fire', NULL, 0.5, 6.2, 4, TRUE, 390, NULL),
(391, 'Monferno', 'Pokémon Brincalhão', 'Aumenta a chama da cauda para parecer maior e assustar os inimigos. Usa paredes e tetos para atacar pelo alto.', 'fire', 'fighting', 0.9, 22, 4, FALSE, 390, 14),
(392, 'Infernape', 'Pokémon Chama', 'Luta com um estilo próprio de artes marciais, usando as quatro patas. A coroa de fogo na cabeça mostra como ele é feroz.', 'fire', 'fighting', 1.2, 55, 4, FALSE, 390, 36),
(393, 'Piplup', 'Pokémon Pinguim', 'É muito orgulhoso e não gosta de ganhar comida das pessoas. Nada muito bem e consegue mergulhar por mais de dez minutos para caçar.', 'water', NULL, 0.4, 5.2, 4, TRUE, 393, NULL),
(394, 'Prinplup', 'Pokémon Pinguim', 'Vive sozinho, e cada um acha que é o mais importante de todos. Com as asas, dá golpes capazes de quebrar árvores.', 'water', NULL, 0.8, 23, 4, FALSE, 393, 16),
(395, 'Empoleon', 'Pokémon Imperador', 'Os três chifres do bico mostram sua força, e o líder do grupo tem os maiores. Nada rápido como um barco a motor e corta até gelo com as asas.', 'water', 'steel', 1.7, 84.5, 4, FALSE, 393, 36);

-- Unova: os 3 iniciais e as evoluções
INSERT INTO pokemon (id, name, category, description, type1, type2, height, weight, generation, starter, first_stage_id, evolution_level) VALUES
(495, 'Snivy', 'Pokémon Cobra de Grama', 'É esperto e calmo. Faz fotossíntese tomando sol com a cauda, e quando não está bem, a cauda fica caída.', 'grass', NULL, 0.6, 8.1, 5, TRUE, 495, NULL),
(496, 'Servine', 'Pokémon Cobra de Grama', 'Desliza pelo chão tão rápido que confunde os inimigos. Também se esconde no meio das folhas para fugir dos ataques.', 'grass', NULL, 0.8, 16, 5, FALSE, 495, 17),
(497, 'Serperior', 'Pokémon Realeza', 'Consegue paralisar um oponente só com o olhar. Só luta de verdade contra quem não se intimida com seus olhos.', 'grass', NULL, 3.3, 63, 5, FALSE, 495, 36),
(498, 'Tepig', 'Pokémon Porco de Fogo', 'Solta fogo pelo focinho, e quando está resfriado sai fumaça preta no lugar. Adora frutas assadas, mas às vezes se empolga e queima tudo.', 'fire', NULL, 0.5, 9.9, 5, TRUE, 498, NULL),
(499, 'Pignite', 'Pokémon Porco de Fogo', 'Tudo o que come vira combustível para o fogo da barriga. Quando esse fogo aumenta, ele fica mais rápido e mais forte.', 'fire', 'fighting', 1, 55.5, 5, FALSE, 498, 17),
(500, 'Emboar', 'Pokémon Porco de Fogo Gigante', 'Tem uma barba de fogo e golpes de luta rápidos e poderosos. Apesar da cara de bravo, se importa muito com os amigos.', 'fire', 'fighting', 1.6, 150, 5, FALSE, 498, 36),
(501, 'Oshawott', 'Pokémon Lontra do Mar', 'Usa a concha da barriga como uma lâmina e revida na hora quando é atacado. Essa concha é feita do mesmo material das garras.', 'water', NULL, 0.5, 5.9, 5, TRUE, 501, NULL),
(502, 'Dewott', 'Pokémon Disciplina', 'Treina pesado para lutar com as duas conchas ao mesmo tempo. Cada Dewott acaba criando o seu próprio jeito de lutar.', 'water', NULL, 0.8, 24.5, 5, FALSE, 501, 17),
(503, 'Samurott', 'Pokémon Formidável', 'Parte da armadura das patas da frente vira uma espada enorme. Um golpe só dela basta para derrubar um adversário.', 'water', NULL, 1.5, 94.6, 5, FALSE, 501, 36);

-- Líderes de ginásio, na ordem das insígnias.
-- map_x e map_y dizem onde a cidade fica na imagem do mapa da região (em pixels).
-- Os nomes das insígnias em português são traduções; badge_original_name é o nome do jogo.
INSERT INTO gym_leader (generation, badge, name, city, types, map_x, map_y, sprite_url, badge_name, badge_original_name, badge_image_url) VALUES
(1, 1, 'Brock', 'Cidade de Pewter', 'rock', 52, 54, 'https://play.pokemonshowdown.com/sprites/trainers/brock-gen3.png', 'Insígnia Rocha', 'Boulder Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/1.png'),
(1, 2, 'Misty', 'Cidade de Cerulean', 'water', 132, 44, 'https://play.pokemonshowdown.com/sprites/trainers/misty-gen3.png', 'Insígnia Cascata', 'Cascade Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/2.png'),
(1, 3, 'Tenente Surge', 'Cidade de Vermilion', 'electric', 132, 92, 'https://play.pokemonshowdown.com/sprites/trainers/ltsurge-gen3.png', 'Insígnia Trovão', 'Thunder Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/3.png'),
(1, 4, 'Erika', 'Cidade de Celadon', 'grass', 108, 68, 'https://play.pokemonshowdown.com/sprites/trainers/erika-gen3.png', 'Insígnia Arco-Íris', 'Rainbow Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/4.png'),
(1, 5, 'Koga', 'Cidade de Fuchsia', 'poison', 116, 116, 'https://play.pokemonshowdown.com/sprites/trainers/koga-gen3.png', 'Insígnia Alma', 'Soul Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/5.png'),
(1, 6, 'Sabrina', 'Cidade de Saffron', 'psychic', 131, 69, 'https://play.pokemonshowdown.com/sprites/trainers/sabrina-gen3.png', 'Insígnia Pântano', 'Marsh Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/6.png'),
(1, 7, 'Blaine', 'Ilha Cinnabar', 'fire', 51, 132, 'https://play.pokemonshowdown.com/sprites/trainers/blaine-gen3.png', 'Insígnia Vulcão', 'Volcano Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/7.png'),
(1, 8, 'Giovanni', 'Cidade de Viridian', 'ground', 52, 84, 'https://play.pokemonshowdown.com/sprites/trainers/giovanni-gen3.png', 'Insígnia Terra', 'Earth Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/8.png'),
(2, 1, 'Falkner', 'Cidade de Violet', 'flying', 94, 64, 'https://play.pokemonshowdown.com/sprites/trainers/falkner.png', 'Insígnia Zéfiro', 'Zephyr Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/9.png'),
(2, 2, 'Bugsy', 'Cidade de Azalea', 'bug', 75, 133, 'https://play.pokemonshowdown.com/sprites/trainers/bugsy.png', 'Insígnia Colmeia', 'Hive Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/10.png'),
(2, 3, 'Whitney', 'Cidade de Goldenrod', 'normal', 56, 96, 'https://play.pokemonshowdown.com/sprites/trainers/whitney.png', 'Insígnia Planície', 'Plain Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/11.png'),
(2, 4, 'Morty', 'Cidade de Ecruteak', 'ghost', 74, 44, 'https://play.pokemonshowdown.com/sprites/trainers/morty.png', 'Insígnia Névoa', 'Fog Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/12.png'),
(2, 5, 'Chuck', 'Cidade de Cianwood', 'fighting', 12, 100, 'https://play.pokemonshowdown.com/sprites/trainers/chuck.png', 'Insígnia Tempestade', 'Storm Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/13.png'),
(2, 6, 'Jasmine', 'Cidade de Olivine', 'steel', 26, 57, 'https://play.pokemonshowdown.com/sprites/trainers/jasmine.png', 'Insígnia Mineral', 'Mineral Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/14.png'),
(2, 7, 'Pryce', 'Cidade de Mahogany', 'ice', 113, 44, 'https://play.pokemonshowdown.com/sprites/trainers/pryce.png', 'Insígnia Geleira', 'Glacier Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/15.png'),
(2, 8, 'Clair', 'Cidade de Blackthorn', 'dragon', 141, 44, 'https://play.pokemonshowdown.com/sprites/trainers/clair.png', 'Insígnia Ascensão', 'Rising Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/16.png'),
(3, 1, 'Roxanne', 'Cidade de Rustboro', 'rock', 19, 86, 'https://play.pokemonshowdown.com/sprites/trainers/roxanne-gen3.png', 'Insígnia Pedra', 'Stone Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/17.png'),
(3, 2, 'Brawly', 'Cidade de Dewford', 'fighting', 42, 189, 'https://play.pokemonshowdown.com/sprites/trainers/brawly-gen3.png', 'Insígnia Punho', 'Knuckle Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/18.png'),
(3, 3, 'Wattson', 'Cidade de Mauville', 'electric', 92, 93, 'https://play.pokemonshowdown.com/sprites/trainers/wattson-gen3.png', 'Insígnia Dínamo', 'Dynamo Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/19.png'),
(3, 4, 'Flannery', 'Cidade de Lavaridge', 'fire', 68, 68, 'https://play.pokemonshowdown.com/sprites/trainers/flannery-gen3.png', 'Insígnia Calor', 'Heat Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/20.png'),
(3, 5, 'Norman', 'Cidade de Petalburg', 'normal', 38, 126, 'https://play.pokemonshowdown.com/sprites/trainers/norman-gen3.png', 'Insígnia Equilíbrio', 'Balance Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/21.png'),
(3, 6, 'Winona', 'Cidade de Fortree', 'flying', 113, 47, 'https://play.pokemonshowdown.com/sprites/trainers/winona-gen3.png', 'Insígnia Pena', 'Feather Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/22.png'),
(3, 7, 'Tate e Liza', 'Cidade de Mossdeep', 'psychic', 235, 83, 'https://play.pokemonshowdown.com/sprites/trainers/tateandliza-gen3.png', 'Insígnia Mente', 'Mind Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/23.png'),
(3, 8, 'Wallace (Juan no Emerald)', 'Cidade de Sootopolis', 'water', 203, 113, 'https://play.pokemonshowdown.com/sprites/trainers/wallace-gen3rs.png', 'Insígnia Chuva', 'Rain Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/24.png'),
(4, 1, 'Roark', 'Cidade de Oreburgh', 'rock', 65, 126, 'https://play.pokemonshowdown.com/sprites/trainers/roark.png', 'Insígnia Carvão', 'Coal Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/25.png'),
(4, 2, 'Gardenia', 'Cidade de Eterna', 'grass', 72, 77, 'https://play.pokemonshowdown.com/sprites/trainers/gardenia.png', 'Insígnia Floresta', 'Forest Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/26.png'),
(4, 3, 'Maylene', 'Cidade de Veilstone', 'fighting', 156, 95, 'https://play.pokemonshowdown.com/sprites/trainers/maylene.png', 'Insígnia Paralelepípedo', 'Cobble Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/27.png'),
(4, 4, 'Crasher Wake', 'Cidade de Pastoria', 'water', 134, 147, 'https://play.pokemonshowdown.com/sprites/trainers/crasherwake.png', 'Insígnia Brejo', 'Fen Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/28.png'),
(4, 5, 'Fantina', 'Cidade de Hearthome', 'ghost', 107, 116, 'https://play.pokemonshowdown.com/sprites/trainers/fantina.png', 'Insígnia Relíquia', 'Relic Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/29.png'),
(4, 6, 'Byron', 'Cidade de Canalave', 'steel', 12, 123, 'https://play.pokemonshowdown.com/sprites/trainers/byron.png', 'Insígnia Mina', 'Mine Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/30.png'),
(4, 7, 'Candice', 'Cidade de Snowpoint', 'ice', 82, 11, 'https://play.pokemonshowdown.com/sprites/trainers/candice.png', 'Insígnia Pingente de Gelo', 'Icicle Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/31.png'),
(4, 8, 'Volkner', 'Cidade de Sunyshore', 'electric', 191, 130, 'https://play.pokemonshowdown.com/sprites/trainers/volkner.png', 'Insígnia Farol', 'Beacon Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/32.png'),
(5, 1, 'Cilan, Chili e Cress', 'Cidade de Striaton', 'grass,fire,water', 228, 118, 'https://play.pokemonshowdown.com/sprites/trainers/cilan.png', 'Insígnia Trio', 'Trio Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/33.png'),
(5, 2, 'Lenora', 'Cidade de Nacrene', 'normal', 203, 118, 'https://play.pokemonshowdown.com/sprites/trainers/lenora.png', 'Insígnia Básica', 'Basic Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/34.png'),
(5, 3, 'Burgh', 'Cidade de Castelia', 'bug', 132, 130, 'https://play.pokemonshowdown.com/sprites/trainers/burgh.png', 'Insígnia Inseto', 'Insect Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/36.png'),
(5, 4, 'Elesa', 'Cidade de Nimbasa', 'electric', 132, 91, 'https://play.pokemonshowdown.com/sprites/trainers/elesa.png', 'Insígnia Raio', 'Bolt Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/37.png'),
(5, 5, 'Clay', 'Cidade de Driftveil', 'ground', 74, 91, 'https://play.pokemonshowdown.com/sprites/trainers/clay.png', 'Insígnia Tremor', 'Quake Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/38.png'),
(5, 6, 'Skyla', 'Cidade de Mistralton', 'flying', 40, 67, 'https://play.pokemonshowdown.com/sprites/trainers/skyla.png', 'Insígnia Jato', 'Jet Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/39.png'),
(5, 7, 'Brycen', 'Cidade de Icirrus', 'ice', 74, 43, 'https://play.pokemonshowdown.com/sprites/trainers/brycen.png', 'Insígnia Congelamento', 'Freeze Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/40.png'),
(5, 8, 'Drayden (Iris no White)', 'Cidade de Opelucid', 'dragon', 132, 43, 'https://play.pokemonshowdown.com/sprites/trainers/drayden.png', 'Insígnia Lenda', 'Legend Badge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/badges/41.png');

-- Elite dos 4, na ordem em que são enfrentados
INSERT INTO elite_four_member (generation, position, name, place, types, map_x, map_y, sprite_url) VALUES
(1, 1, 'Lorelei', 'Platô Índigo', 'ice', 27, 43, 'https://play.pokemonshowdown.com/sprites/trainers/lorelei-gen3.png'),
(1, 2, 'Bruno', 'Platô Índigo', 'fighting', 27, 43, 'https://play.pokemonshowdown.com/sprites/trainers/bruno-gen3.png'),
(1, 3, 'Agatha', 'Platô Índigo', 'ghost', 27, 43, 'https://play.pokemonshowdown.com/sprites/trainers/agatha-gen3.png'),
(1, 4, 'Lance', 'Platô Índigo', 'dragon', 27, 43, 'https://play.pokemonshowdown.com/sprites/trainers/lance-gen3.png'),
(2, 1, 'Will', 'Platô Índigo (fica em Kanto, fora deste mapa)', 'psychic', NULL, NULL, 'https://play.pokemonshowdown.com/sprites/trainers/will.png'),
(2, 2, 'Koga', 'Platô Índigo (fica em Kanto, fora deste mapa)', 'poison', NULL, NULL, 'https://play.pokemonshowdown.com/sprites/trainers/koga.png'),
(2, 3, 'Bruno', 'Platô Índigo (fica em Kanto, fora deste mapa)', 'fighting', NULL, NULL, 'https://play.pokemonshowdown.com/sprites/trainers/bruno.png'),
(2, 4, 'Karen', 'Platô Índigo (fica em Kanto, fora deste mapa)', 'dark', NULL, NULL, 'https://play.pokemonshowdown.com/sprites/trainers/karen.png'),
(3, 1, 'Sidney', 'Cidade de Ever Grande', 'dark', 272, 137, 'https://play.pokemonshowdown.com/sprites/trainers/sidney-gen3.png'),
(3, 2, 'Phoebe', 'Cidade de Ever Grande', 'ghost', 272, 137, 'https://play.pokemonshowdown.com/sprites/trainers/phoebe-gen3.png'),
(3, 3, 'Glacia', 'Cidade de Ever Grande', 'ice', 272, 137, 'https://play.pokemonshowdown.com/sprites/trainers/glacia-gen3.png'),
(3, 4, 'Drake', 'Cidade de Ever Grande', 'dragon', 272, 137, 'https://play.pokemonshowdown.com/sprites/trainers/drake-gen3.png'),
(4, 1, 'Aaron', 'Liga Pokémon de Sinnoh', 'bug', 187, 84, 'https://play.pokemonshowdown.com/sprites/trainers/aaron.png'),
(4, 2, 'Bertha', 'Liga Pokémon de Sinnoh', 'ground', 187, 84, 'https://play.pokemonshowdown.com/sprites/trainers/bertha.png'),
(4, 3, 'Flint', 'Liga Pokémon de Sinnoh', 'fire', 187, 84, 'https://play.pokemonshowdown.com/sprites/trainers/flint.png'),
(4, 4, 'Lucian', 'Liga Pokémon de Sinnoh', 'psychic', 187, 84, 'https://play.pokemonshowdown.com/sprites/trainers/lucian.png'),
(5, 1, 'Shauntal', 'Liga Pokémon de Unova', 'ghost', 170, 15, 'https://play.pokemonshowdown.com/sprites/trainers/shauntal.png'),
(5, 2, 'Grimsley', 'Liga Pokémon de Unova', 'dark', 170, 15, 'https://play.pokemonshowdown.com/sprites/trainers/grimsley.png'),
(5, 3, 'Caitlin', 'Liga Pokémon de Unova', 'psychic', 170, 15, 'https://play.pokemonshowdown.com/sprites/trainers/caitlin.png'),
(5, 4, 'Marshal', 'Liga Pokémon de Unova', 'fighting', 170, 15, 'https://play.pokemonshowdown.com/sprites/trainers/marshal.png');

-- Times dos líderes de ginásio e da Elite dos 4
-- (nos jogos Red/Blue, Gold/Silver, Ruby/Sapphire, Diamond/Pearl e Black/White, fonte: PokémonDB).
-- gym_leader_id e elite_four_member_id seguem a ordem dos INSERTs acima (1 a 40 e 1 a 20).
-- evolution_line é a linha de evolução, só com Pokémon das 5 primeiras gerações.
INSERT INTO team_pokemon (gym_leader_id, elite_four_member_id, slot, name, level, types, note, evolution_line) VALUES
-- Brock
(1, NULL, 1, 'Geodude', 12, 'rock,ground', NULL, 'Geodude,Graveler,Golem'),
(1, NULL, 2, 'Onix', 14, 'rock,ground', NULL, 'Onix,Steelix'),
-- Misty
(2, NULL, 1, 'Staryu', 18, 'water', NULL, 'Staryu,Starmie'),
(2, NULL, 2, 'Starmie', 21, 'water,psychic', NULL, 'Staryu,Starmie'),
-- Lt. Surge
(3, NULL, 1, 'Voltorb', 21, 'electric', NULL, 'Voltorb,Electrode'),
(3, NULL, 2, 'Pikachu', 18, 'electric', NULL, 'Pichu,Pikachu,Raichu'),
(3, NULL, 3, 'Raichu', 24, 'electric', NULL, 'Pichu,Pikachu,Raichu'),
-- Erika
(4, NULL, 1, 'Victreebel', 29, 'grass,poison', NULL, 'Bellsprout,Weepinbell,Victreebel'),
(4, NULL, 2, 'Tangela', 24, 'grass', NULL, 'Tangela,Tangrowth'),
(4, NULL, 3, 'Vileplume', 29, 'grass,poison', NULL, 'Oddish,Gloom,Vileplume'),
-- Koga
(5, NULL, 1, 'Koffing', 37, 'poison', NULL, 'Koffing,Weezing'),
(5, NULL, 2, 'Koffing', 37, 'poison', NULL, 'Koffing,Weezing'),
(5, NULL, 3, 'Muk', 39, 'poison', NULL, 'Grimer,Muk'),
(5, NULL, 4, 'Weezing', 43, 'poison', NULL, 'Koffing,Weezing'),
-- Sabrina
(6, NULL, 1, 'Kadabra', 38, 'psychic', NULL, 'Abra,Kadabra,Alakazam'),
(6, NULL, 2, 'Mr. Mime', 37, 'psychic,fairy', NULL, 'Mime Jr.,Mr. Mime'),
(6, NULL, 3, 'Venomoth', 38, 'bug,poison', NULL, 'Venonat,Venomoth'),
(6, NULL, 4, 'Alakazam', 43, 'psychic', NULL, 'Abra,Kadabra,Alakazam'),
-- Blaine
(7, NULL, 1, 'Growlithe', 42, 'fire', NULL, 'Growlithe,Arcanine'),
(7, NULL, 2, 'Ponyta', 40, 'fire', NULL, 'Ponyta,Rapidash'),
(7, NULL, 3, 'Rapidash', 42, 'fire', NULL, 'Ponyta,Rapidash'),
(7, NULL, 4, 'Arcanine', 47, 'fire', NULL, 'Growlithe,Arcanine'),
-- Giovanni
(8, NULL, 1, 'Rhyhorn', 45, 'ground,rock', NULL, 'Rhyhorn,Rhydon,Rhyperior'),
(8, NULL, 2, 'Dugtrio', 42, 'ground', NULL, 'Diglett,Dugtrio'),
(8, NULL, 3, 'Nidoqueen', 44, 'poison,ground', NULL, 'Nidoran♀,Nidorina,Nidoqueen'),
(8, NULL, 4, 'Nidoking', 45, 'poison,ground', NULL, 'Nidoran♂,Nidorino,Nidoking'),
(8, NULL, 5, 'Rhydon', 50, 'ground,rock', NULL, 'Rhyhorn,Rhydon,Rhyperior'),
-- Elite dos 4: Lorelei
(NULL, 1, 1, 'Dewgong', 54, 'water,ice', NULL, 'Seel,Dewgong'),
(NULL, 1, 2, 'Cloyster', 53, 'water,ice', NULL, 'Shellder,Cloyster'),
(NULL, 1, 3, 'Slowbro', 54, 'water,psychic', NULL, 'Slowpoke,Slowbro'),
(NULL, 1, 4, 'Jynx', 56, 'ice,psychic', NULL, 'Smoochum,Jynx'),
(NULL, 1, 5, 'Lapras', 56, 'water,ice', NULL, 'Lapras'),
-- Elite dos 4: Bruno
(NULL, 2, 1, 'Onix', 53, 'rock,ground', NULL, 'Onix,Steelix'),
(NULL, 2, 2, 'Hitmonchan', 55, 'fighting', NULL, 'Tyrogue,Hitmonchan'),
(NULL, 2, 3, 'Hitmonlee', 55, 'fighting', NULL, 'Tyrogue,Hitmonlee'),
(NULL, 2, 4, 'Onix', 56, 'rock,ground', NULL, 'Onix,Steelix'),
(NULL, 2, 5, 'Machamp', 58, 'fighting', NULL, 'Machop,Machoke,Machamp'),
-- Elite dos 4: Agatha
(NULL, 3, 1, 'Gengar', 56, 'ghost,poison', NULL, 'Gastly,Haunter,Gengar'),
(NULL, 3, 2, 'Golbat', 56, 'poison,flying', NULL, 'Zubat,Golbat,Crobat'),
(NULL, 3, 3, 'Haunter', 55, 'ghost,poison', NULL, 'Gastly,Haunter,Gengar'),
(NULL, 3, 4, 'Arbok', 58, 'poison', NULL, 'Ekans,Arbok'),
(NULL, 3, 5, 'Gengar', 60, 'ghost,poison', NULL, 'Gastly,Haunter,Gengar'),
-- Elite dos 4: Lance
(NULL, 4, 1, 'Gyarados', 58, 'water,flying', NULL, 'Magikarp,Gyarados'),
(NULL, 4, 2, 'Dragonair', 56, 'dragon', NULL, 'Dratini,Dragonair,Dragonite'),
(NULL, 4, 3, 'Dragonair', 56, 'dragon', NULL, 'Dratini,Dragonair,Dragonite'),
(NULL, 4, 4, 'Aerodactyl', 60, 'rock,flying', NULL, 'Aerodactyl'),
(NULL, 4, 5, 'Dragonite', 62, 'dragon,flying', NULL, 'Dratini,Dragonair,Dragonite'),
-- Falkner
(9, NULL, 1, 'Pidgey', 7, 'normal,flying', NULL, 'Pidgey,Pidgeotto,Pidgeot'),
(9, NULL, 2, 'Pidgeotto', 9, 'normal,flying', NULL, 'Pidgey,Pidgeotto,Pidgeot'),
-- Bugsy
(10, NULL, 1, 'Metapod', 14, 'bug', NULL, 'Caterpie,Metapod,Butterfree'),
(10, NULL, 2, 'Kakuna', 14, 'bug,poison', NULL, 'Weedle,Kakuna,Beedrill'),
(10, NULL, 3, 'Scyther', 16, 'bug,flying', NULL, 'Scyther,Scizor'),
-- Whitney
(11, NULL, 1, 'Clefairy', 18, 'fairy', NULL, 'Cleffa,Clefairy,Clefable'),
(11, NULL, 2, 'Miltank', 20, 'normal', NULL, 'Miltank'),
-- Morty
(12, NULL, 1, 'Gastly', 21, 'ghost,poison', NULL, 'Gastly,Haunter,Gengar'),
(12, NULL, 2, 'Haunter', 21, 'ghost,poison', NULL, 'Gastly,Haunter,Gengar'),
(12, NULL, 3, 'Haunter', 23, 'ghost,poison', NULL, 'Gastly,Haunter,Gengar'),
(12, NULL, 4, 'Gengar', 25, 'ghost,poison', NULL, 'Gastly,Haunter,Gengar'),
-- Chuck
(13, NULL, 1, 'Primeape', 27, 'fighting', NULL, 'Mankey,Primeape'),
(13, NULL, 2, 'Poliwrath', 30, 'water,fighting', NULL, 'Poliwag,Poliwhirl,Poliwrath'),
-- Jasmine
(14, NULL, 1, 'Magnemite', 30, 'electric,steel', NULL, 'Magnemite,Magneton,Magnezone'),
(14, NULL, 2, 'Magnemite', 30, 'electric,steel', NULL, 'Magnemite,Magneton,Magnezone'),
(14, NULL, 3, 'Steelix', 35, 'steel,ground', NULL, 'Onix,Steelix'),
-- Pryce
(15, NULL, 1, 'Seel', 27, 'water', NULL, 'Seel,Dewgong'),
(15, NULL, 2, 'Dewgong', 29, 'water,ice', NULL, 'Seel,Dewgong'),
(15, NULL, 3, 'Piloswine', 31, 'ice,ground', NULL, 'Swinub,Piloswine,Mamoswine'),
-- Clair
(16, NULL, 1, 'Dragonair', 37, 'dragon', NULL, 'Dratini,Dragonair,Dragonite'),
(16, NULL, 2, 'Dragonair', 37, 'dragon', NULL, 'Dratini,Dragonair,Dragonite'),
(16, NULL, 3, 'Dragonair', 37, 'dragon', NULL, 'Dratini,Dragonair,Dragonite'),
(16, NULL, 4, 'Kingdra', 40, 'water,dragon', NULL, 'Horsea,Seadra,Kingdra'),
-- Elite dos 4: Will
(NULL, 5, 1, 'Xatu', 40, 'psychic,flying', NULL, 'Natu,Xatu'),
(NULL, 5, 2, 'Jynx', 41, 'ice,psychic', NULL, 'Smoochum,Jynx'),
(NULL, 5, 3, 'Slowbro', 41, 'water,psychic', NULL, 'Slowpoke,Slowbro'),
(NULL, 5, 4, 'Exeggutor', 41, 'grass,psychic', NULL, 'Exeggcute,Exeggutor'),
(NULL, 5, 5, 'Xatu', 42, 'psychic,flying', NULL, 'Natu,Xatu'),
-- Elite dos 4: Koga
(NULL, 6, 1, 'Ariados', 40, 'bug,poison', NULL, 'Spinarak,Ariados'),
(NULL, 6, 2, 'Venomoth', 41, 'bug,poison', NULL, 'Venonat,Venomoth'),
(NULL, 6, 3, 'Forretress', 43, 'bug,steel', NULL, 'Pineco,Forretress'),
(NULL, 6, 4, 'Muk', 42, 'poison', NULL, 'Grimer,Muk'),
(NULL, 6, 5, 'Crobat', 44, 'poison,flying', NULL, 'Zubat,Golbat,Crobat'),
-- Elite dos 4: Bruno
(NULL, 7, 1, 'Hitmontop', 42, 'fighting', NULL, 'Tyrogue,Hitmontop'),
(NULL, 7, 2, 'Hitmonlee', 42, 'fighting', NULL, 'Tyrogue,Hitmonlee'),
(NULL, 7, 3, 'Hitmonchan', 42, 'fighting', NULL, 'Tyrogue,Hitmonchan'),
(NULL, 7, 4, 'Onix', 43, 'rock,ground', NULL, 'Onix,Steelix'),
(NULL, 7, 5, 'Machamp', 46, 'fighting', NULL, 'Machop,Machoke,Machamp'),
-- Elite dos 4: Karen
(NULL, 8, 1, 'Umbreon', 42, 'dark', NULL, 'Eevee,Umbreon'),
(NULL, 8, 2, 'Vileplume', 42, 'grass,poison', NULL, 'Oddish,Gloom,Vileplume'),
(NULL, 8, 3, 'Murkrow', 44, 'dark,flying', NULL, 'Murkrow,Honchkrow'),
(NULL, 8, 4, 'Gengar', 45, 'ghost,poison', NULL, 'Gastly,Haunter,Gengar'),
(NULL, 8, 5, 'Houndoom', 47, 'dark,fire', NULL, 'Houndour,Houndoom'),
-- Roxanne
(17, NULL, 1, 'Geodude', 14, 'rock,ground', NULL, 'Geodude,Graveler,Golem'),
(17, NULL, 2, 'Nosepass', 15, 'rock', NULL, 'Nosepass,Probopass'),
-- Brawly
(18, NULL, 1, 'Machop', 17, 'fighting', NULL, 'Machop,Machoke,Machamp'),
(18, NULL, 2, 'Makuhita', 18, 'fighting', NULL, 'Makuhita,Hariyama'),
-- Wattson
(19, NULL, 1, 'Magnemite', 22, 'electric,steel', NULL, 'Magnemite,Magneton,Magnezone'),
(19, NULL, 2, 'Voltorb', 20, 'electric', NULL, 'Voltorb,Electrode'),
(19, NULL, 3, 'Magneton', 23, 'electric,steel', NULL, 'Magnemite,Magneton,Magnezone'),
-- Flannery
(20, NULL, 1, 'Slugma', 26, 'fire', NULL, 'Slugma,Magcargo'),
(20, NULL, 2, 'Slugma', 26, 'fire', NULL, 'Slugma,Magcargo'),
(20, NULL, 3, 'Torkoal', 28, 'fire', NULL, 'Torkoal'),
-- Norman
(21, NULL, 1, 'Slaking', 28, 'normal', NULL, 'Slakoth,Vigoroth,Slaking'),
(21, NULL, 2, 'Vigoroth', 30, 'normal', NULL, 'Slakoth,Vigoroth,Slaking'),
(21, NULL, 3, 'Slaking', 31, 'normal', NULL, 'Slakoth,Vigoroth,Slaking'),
-- Winona
(22, NULL, 1, 'Swellow', 31, 'normal,flying', NULL, 'Taillow,Swellow'),
(22, NULL, 2, 'Pelipper', 30, 'water,flying', NULL, 'Wingull,Pelipper'),
(22, NULL, 3, 'Skarmory', 32, 'steel,flying', NULL, 'Skarmory'),
(22, NULL, 4, 'Altaria', 33, 'dragon,flying', NULL, 'Swablu,Altaria'),
-- Tate & Liza
(23, NULL, 1, 'Lunatone', 42, 'rock,psychic', NULL, 'Lunatone'),
(23, NULL, 2, 'Solrock', 42, 'rock,psychic', NULL, 'Solrock'),
-- Wallace
(24, NULL, 1, 'Luvdisc', 40, 'water', NULL, 'Luvdisc'),
(24, NULL, 2, 'Whiscash', 42, 'water,ground', NULL, 'Barboach,Whiscash'),
(24, NULL, 3, 'Sealeo', 40, 'ice,water', NULL, 'Spheal,Sealeo,Walrein'),
(24, NULL, 4, 'Seaking', 42, 'water', NULL, 'Goldeen,Seaking'),
(24, NULL, 5, 'Milotic', 43, 'water', NULL, 'Feebas,Milotic'),
-- Elite dos 4: Sidney
(NULL, 9, 1, 'Mightyena', 46, 'dark', NULL, 'Poochyena,Mightyena'),
(NULL, 9, 2, 'Cacturne', 46, 'grass,dark', NULL, 'Cacnea,Cacturne'),
(NULL, 9, 3, 'Shiftry', 48, 'grass,dark', NULL, 'Seedot,Nuzleaf,Shiftry'),
(NULL, 9, 4, 'Sharpedo', 48, 'water,dark', NULL, 'Carvanha,Sharpedo'),
(NULL, 9, 5, 'Absol', 49, 'dark', NULL, 'Absol'),
-- Elite dos 4: Phoebe
(NULL, 10, 1, 'Dusclops', 48, 'ghost', NULL, 'Duskull,Dusclops,Dusknoir'),
(NULL, 10, 2, 'Banette', 49, 'ghost', NULL, 'Shuppet,Banette'),
(NULL, 10, 3, 'Banette', 49, 'ghost', NULL, 'Shuppet,Banette'),
(NULL, 10, 4, 'Sableye', 50, 'dark,ghost', NULL, 'Sableye'),
(NULL, 10, 5, 'Dusclops', 51, 'ghost', NULL, 'Duskull,Dusclops,Dusknoir'),
-- Elite dos 4: Glacia
(NULL, 11, 1, 'Glalie', 50, 'ice', NULL, 'Snorunt,Glalie'),
(NULL, 11, 2, 'Sealeo', 50, 'ice,water', NULL, 'Spheal,Sealeo,Walrein'),
(NULL, 11, 3, 'Glalie', 52, 'ice', NULL, 'Snorunt,Glalie'),
(NULL, 11, 4, 'Sealeo', 52, 'ice,water', NULL, 'Spheal,Sealeo,Walrein'),
(NULL, 11, 5, 'Walrein', 53, 'ice,water', NULL, 'Spheal,Sealeo,Walrein'),
-- Elite dos 4: Drake
(NULL, 12, 1, 'Shelgon', 52, 'dragon', NULL, 'Bagon,Shelgon,Salamence'),
(NULL, 12, 2, 'Altaria', 54, 'dragon,flying', NULL, 'Swablu,Altaria'),
(NULL, 12, 3, 'Flygon', 53, 'ground,dragon', NULL, 'Trapinch,Vibrava,Flygon'),
(NULL, 12, 4, 'Flygon', 53, 'ground,dragon', NULL, 'Trapinch,Vibrava,Flygon'),
(NULL, 12, 5, 'Salamence', 55, 'dragon,flying', NULL, 'Bagon,Shelgon,Salamence'),
-- Roark
(25, NULL, 1, 'Geodude', 12, 'rock,ground', NULL, 'Geodude,Graveler,Golem'),
(25, NULL, 2, 'Onix', 12, 'rock,ground', NULL, 'Onix,Steelix'),
(25, NULL, 3, 'Cranidos', 14, 'rock', NULL, 'Cranidos,Rampardos'),
-- Gardenia
(26, NULL, 1, 'Cherubi', 19, 'grass', NULL, 'Cherubi,Cherrim'),
(26, NULL, 2, 'Turtwig', 19, 'grass', NULL, 'Turtwig,Grotle,Torterra'),
(26, NULL, 3, 'Roserade', 22, 'grass,poison', NULL, 'Budew,Roselia,Roserade'),
-- Maylene
(27, NULL, 1, 'Meditite', 27, 'fighting,psychic', NULL, 'Meditite,Medicham'),
(27, NULL, 2, 'Machoke', 27, 'fighting', NULL, 'Machop,Machoke,Machamp'),
(27, NULL, 3, 'Lucario', 30, 'fighting,steel', NULL, 'Riolu,Lucario'),
-- Crasher Wake
(28, NULL, 1, 'Gyarados', 27, 'water,flying', NULL, 'Magikarp,Gyarados'),
(28, NULL, 2, 'Quagsire', 27, 'water,ground', NULL, 'Wooper,Quagsire'),
(28, NULL, 3, 'Floatzel', 30, 'water', NULL, 'Buizel,Floatzel'),
-- Fantina
(29, NULL, 1, 'Drifblim', 32, 'ghost,flying', NULL, 'Drifloon,Drifblim'),
(29, NULL, 2, 'Gengar', 34, 'ghost,poison', NULL, 'Gastly,Haunter,Gengar'),
(29, NULL, 3, 'Mismagius', 36, 'ghost', NULL, 'Misdreavus,Mismagius'),
-- Byron
(30, NULL, 1, 'Bronzor', 36, 'steel,psychic', NULL, 'Bronzor,Bronzong'),
(30, NULL, 2, 'Steelix', 36, 'steel,ground', NULL, 'Onix,Steelix'),
(30, NULL, 3, 'Bastiodon', 39, 'rock,steel', NULL, 'Shieldon,Bastiodon'),
-- Candice
(31, NULL, 1, 'Snover', 38, 'grass,ice', NULL, 'Snover,Abomasnow'),
(31, NULL, 2, 'Sneasel', 38, 'dark,ice', NULL, 'Sneasel,Weavile'),
(31, NULL, 3, 'Medicham', 40, 'fighting,psychic', NULL, 'Meditite,Medicham'),
(31, NULL, 4, 'Abomasnow', 42, 'grass,ice', NULL, 'Snover,Abomasnow'),
-- Volkner
(32, NULL, 1, 'Raichu', 46, 'electric', NULL, 'Pichu,Pikachu,Raichu'),
(32, NULL, 2, 'Ambipom', 47, 'normal', NULL, 'Aipom,Ambipom'),
(32, NULL, 3, 'Octillery', 48, 'water', NULL, 'Remoraid,Octillery'),
(32, NULL, 4, 'Luxray', 49, 'electric', NULL, 'Shinx,Luxio,Luxray'),
-- Elite dos 4: Aaron
(NULL, 13, 1, 'Dustox', 53, 'bug,poison', NULL, 'Wurmple,Cascoon,Dustox'),
(NULL, 13, 2, 'Beautifly', 53, 'bug,flying', NULL, 'Wurmple,Silcoon,Beautifly'),
(NULL, 13, 3, 'Heracross', 54, 'bug,fighting', NULL, 'Heracross'),
(NULL, 13, 4, 'Vespiquen', 54, 'bug,flying', NULL, 'Combee,Vespiquen'),
(NULL, 13, 5, 'Drapion', 57, 'poison,dark', NULL, 'Skorupi,Drapion'),
-- Elite dos 4: Bertha
(NULL, 14, 1, 'Quagsire', 55, 'water,ground', NULL, 'Wooper,Quagsire'),
(NULL, 14, 2, 'Whiscash', 55, 'water,ground', NULL, 'Barboach,Whiscash'),
(NULL, 14, 3, 'Golem', 56, 'rock,ground', NULL, 'Geodude,Graveler,Golem'),
(NULL, 14, 4, 'Sudowoodo', 57, 'rock', NULL, 'Bonsly,Sudowoodo'),
(NULL, 14, 5, 'Hippowdon', 59, 'ground', NULL, 'Hippopotas,Hippowdon'),
-- Elite dos 4: Flint
(NULL, 15, 1, 'Rapidash', 58, 'fire', NULL, 'Ponyta,Rapidash'),
(NULL, 15, 2, 'Steelix', 57, 'steel,ground', NULL, 'Onix,Steelix'),
(NULL, 15, 3, 'Lopunny', 57, 'normal', NULL, 'Buneary,Lopunny'),
(NULL, 15, 4, 'Drifblim', 58, 'ghost,flying', NULL, 'Drifloon,Drifblim'),
(NULL, 15, 5, 'Infernape', 61, 'fire,fighting', NULL, 'Chimchar,Monferno,Infernape'),
-- Elite dos 4: Lucian
(NULL, 16, 1, 'Mr. Mime', 59, 'psychic,fairy', NULL, 'Mime Jr.,Mr. Mime'),
(NULL, 16, 2, 'Girafarig', 59, 'normal,psychic', NULL, 'Girafarig'),
(NULL, 16, 3, 'Medicham', 60, 'fighting,psychic', NULL, 'Meditite,Medicham'),
(NULL, 16, 4, 'Alakazam', 60, 'psychic', NULL, 'Abra,Kadabra,Alakazam'),
(NULL, 16, 5, 'Bronzong', 63, 'steel,psychic', NULL, 'Bronzor,Bronzong'),
-- Cilan / Chili / Cress
(33, NULL, 1, 'Lillipup', 12, 'normal', NULL, 'Lillipup,Herdier,Stoutland'),
(33, NULL, 2, 'Pansage', 14, 'grass', 'Com o Cilan, se você escolheu o Oshawott', 'Pansage,Simisage'),
(33, NULL, 3, 'Pansear', 14, 'fire', 'Com o Chili, se você escolheu o Snivy', 'Pansear,Simisear'),
(33, NULL, 4, 'Panpour', 14, 'water', 'Com o Cress, se você escolheu o Tepig', 'Panpour,Simipour'),
-- Lenora
(34, NULL, 1, 'Herdier', 18, 'normal', NULL, 'Lillipup,Herdier,Stoutland'),
(34, NULL, 2, 'Watchog', 20, 'normal', NULL, 'Patrat,Watchog'),
-- Burgh
(35, NULL, 1, 'Whirlipede', 21, 'bug,poison', NULL, 'Venipede,Whirlipede,Scolipede'),
(35, NULL, 2, 'Dwebble', 21, 'bug,rock', NULL, 'Dwebble,Crustle'),
(35, NULL, 3, 'Leavanny', 23, 'bug,grass', NULL, 'Sewaddle,Swadloon,Leavanny'),
-- Elesa
(36, NULL, 1, 'Emolga', 25, 'electric,flying', NULL, 'Emolga'),
(36, NULL, 2, 'Emolga', 25, 'electric,flying', NULL, 'Emolga'),
(36, NULL, 3, 'Zebstrika', 27, 'electric', NULL, 'Blitzle,Zebstrika'),
-- Clay
(37, NULL, 1, 'Krokorok', 29, 'ground,dark', NULL, 'Sandile,Krokorok,Krookodile'),
(37, NULL, 2, 'Palpitoad', 29, 'water,ground', NULL, 'Tympole,Palpitoad,Seismitoad'),
(37, NULL, 3, 'Excadrill', 31, 'ground,steel', NULL, 'Drilbur,Excadrill'),
-- Skyla
(38, NULL, 1, 'Swoobat', 33, 'psychic,flying', NULL, 'Woobat,Swoobat'),
(38, NULL, 2, 'Unfezant', 33, 'normal,flying', NULL, 'Pidove,Tranquill,Unfezant'),
(38, NULL, 3, 'Swanna', 35, 'water,flying', NULL, 'Ducklett,Swanna'),
-- Brycen
(39, NULL, 1, 'Vanillish', 37, 'ice', NULL, 'Vanillite,Vanillish,Vanilluxe'),
(39, NULL, 2, 'Cryogonal', 37, 'ice', NULL, 'Cryogonal'),
(39, NULL, 3, 'Beartic', 39, 'ice', NULL, 'Cubchoo,Beartic'),
-- Drayden / Iris
(40, NULL, 1, 'Fraxure', 41, 'dragon', NULL, 'Axew,Fraxure,Haxorus'),
(40, NULL, 2, 'Druddigon', 41, 'dragon', NULL, 'Druddigon'),
(40, NULL, 3, 'Haxorus', 43, 'dragon', NULL, 'Axew,Fraxure,Haxorus'),
-- Elite dos 4: Shauntal
(NULL, 17, 1, 'Cofagrigus', 48, 'ghost', NULL, 'Yamask,Cofagrigus'),
(NULL, 17, 2, 'Jellicent', 48, 'water,ghost', NULL, 'Frillish,Jellicent'),
(NULL, 17, 3, 'Golurk', 48, 'ground,ghost', NULL, 'Golett,Golurk'),
(NULL, 17, 4, 'Chandelure', 50, 'ghost,fire', NULL, 'Litwick,Lampent,Chandelure'),
-- Elite dos 4: Grimsley
(NULL, 18, 1, 'Scrafty', 48, 'dark,fighting', NULL, 'Scraggy,Scrafty'),
(NULL, 18, 2, 'Liepard', 48, 'dark', NULL, 'Purrloin,Liepard'),
(NULL, 18, 3, 'Krookodile', 48, 'ground,dark', NULL, 'Sandile,Krokorok,Krookodile'),
(NULL, 18, 4, 'Bisharp', 50, 'dark,steel', NULL, 'Pawniard,Bisharp'),
-- Elite dos 4: Caitlin
(NULL, 19, 1, 'Reuniclus', 48, 'psychic', NULL, 'Solosis,Duosion,Reuniclus'),
(NULL, 19, 2, 'Musharna', 48, 'psychic', NULL, 'Munna,Musharna'),
(NULL, 19, 3, 'Sigilyph', 48, 'psychic,flying', NULL, 'Sigilyph'),
(NULL, 19, 4, 'Gothitelle', 50, 'psychic', NULL, 'Gothita,Gothorita,Gothitelle'),
-- Elite dos 4: Marshal
(NULL, 20, 1, 'Throh', 48, 'fighting', NULL, 'Throh'),
(NULL, 20, 2, 'Sawk', 48, 'fighting', NULL, 'Sawk'),
(NULL, 20, 3, 'Conkeldurr', 48, 'fighting', NULL, 'Timburr,Gurdurr,Conkeldurr'),
(NULL, 20, 4, 'Mienshao', 50, 'fighting', NULL, 'Mienfoo,Mienshao');
