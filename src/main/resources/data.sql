-- Dados da Pokédex dos Iniciais
-- O Spring roda este arquivo toda vez que a API sobe, depois de criar as tabelas.

-- As 5 gerações. Os nomes de lugares e pessoas seguem a dublagem brasileira do anime
-- (ex: Professor Carvalho, Cidade de Pallet, Rota 24).
-- "remakes" são as versões novas dos jogos da região (a Unova ainda não tem).
INSERT INTO generation (id, region, games, remakes, starter_location, map_url, map_width, map_height, map_visible_height, gym_games) VALUES
(1, 'Kanto', 'Red, Blue e Yellow', 'FireRed e LeafGreen (2004) e Let''s Go, Pikachu! e Let''s Go, Eevee! (2018)', 'No laboratório do Professor Carvalho, na Cidade de Pallet, logo no começo do jogo. No Yellow você começa com um Pikachu (e no Let''s Go, com o Pikachu ou o Eevee) e ganha os três depois: o Bulbasaur na Cidade de Cerulean, o Charmander na Rota 24 e o Squirtle na Cidade de Vermilion.', 'https://www.serebii.net/pokearth/kanto.png', 200, 618, 150, 'Red, Blue e Yellow'),
(2, 'Johto', 'Gold, Silver e Crystal', 'HeartGold e SoulSilver (2009)', 'No laboratório do Professor Elm, na Cidade de New Bark, logo no começo do jogo. No HeartGold e no SoulSilver também é assim.', 'https://www.serebii.net/pokearth/johto.png', 166, 144, NULL, 'Gold, Silver e Crystal'),
(3, 'Hoenn', 'Ruby, Sapphire e Emerald', 'Omega Ruby e Alpha Sapphire (2014)', 'Na Rota 101, logo ao sair da Cidade de Littleroot. O Professor Birch está sendo atacado por um Pokémon selvagem e você pega um dos três na bolsa dele para ajudar. No Omega Ruby e no Alpha Sapphire acontece a mesma coisa.', 'https://www.serebii.net/pokearth/hoenn.png', 306, 221, NULL, 'Ruby, Sapphire e Emerald'),
(4, 'Sinnoh', 'Diamond, Pearl e Platinum', 'Brilliant Diamond e Shining Pearl (2021)', 'Na Rota 201, perto do Lago Verity. Você escolhe um dos três da maleta do Professor Rowan. No Brilliant Diamond e no Shining Pearl também é assim.', 'https://www.serebii.net/pokearth/sinnoh.png', 216, 168, NULL, 'Diamond e Pearl'),
(5, 'Unova', 'Black, White, Black 2 e White 2', NULL, 'Na sua casa, na Cidade de Nuvema. A Professora Juniper manda uma caixa de presente com os três e você escolhe primeiro, antes do Cheren e da Bianca. No Black 2 e White 2 quem entrega é a Bianca, na Cidade de Aspertia.', 'https://www.serebii.net/pokearth/unova.png', 256, 168, NULL, 'Black e White');

-- Kanto: os 3 iniciais e as evoluções
INSERT INTO pokemon (id, name, category, description, type1, type2, height, weight, generation, starter, first_stage_id, evolution_level) VALUES
(1, 'Bulbasaur', 'Pokémon Semente', 'Já nasce com uma semente nas costas, que cresce junto com ele. Por isso adora tirar sonecas no sol.', 'grass', 'poison', 0.7, 6.9, 1, TRUE, 1, NULL),
(2, 'Ivysaur', 'Pokémon Semente', 'Para aguentar o peso do botão de flor nas costas, as patas dele ficam grossas e fortes. Quando o botão solta um perfume, é sinal de que a flor vai abrir.', 'grass', 'poison', 1, 13, 1, FALSE, 1, 16),
(3, 'Venusaur', 'Pokémon Semente', 'A flor das costas se abre quando ele absorve bastante luz do sol e fica mais colorida quanto mais bem cuidado ele é. O perfume dela acalma quem está por perto.', 'grass', 'poison', 2, 100, 1, FALSE, 1, 32),
(4, 'Charmander', 'Pokémon Lagarto', 'A chama na ponta da cauda acompanha o humor dele e mostra se ele está bem de saúde. Se ela se apagar, é o fim do Charmander.', 'fire', NULL, 0.6, 8.5, 1, TRUE, 4, NULL),
(5, 'Charmeleon', 'Pokémon Chama', 'Quando encontra um adversário forte, fica agitado e a chama da cauda chega a ficar branco-azulada. Luta usando as garras afiadas.', 'fire', NULL, 1.1, 19, 1, FALSE, 4, 16),
(6, 'Charizard', 'Pokémon Chama', 'Suas asas levam ele a quase 1.400 metros de altura. Cospe um fogo capaz de derreter pedras, que fica mais quente a cada batalha difícil.', 'fire', 'flying', 1.7, 90.5, 1, FALSE, 4, 36),
(7, 'Squirtle', 'Pokémon Tartaruguinha', 'O casco arredondado ajuda a nadar bem rápido. Quando se sente em perigo, se esconde dentro dele e revida com jatos de água.', 'water', NULL, 0.5, 9, 1, TRUE, 7, NULL),
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
(252, 'Treecko', 'Pokémon Lagartixa', 'Tem ganchinhos embaixo das patas que deixam ele subir em paredes. É calmo e nunca se assusta: se um inimigo maior encarar, ele encara de volta.', 'grass', NULL, 0.5, 5, 3, TRUE, 252, NULL),
(253, 'Grovyle', 'Pokémon Lagartixa', 'As folhas do corpo ajudam a se camuflar na floresta. Pula de galho em galho tão rápido que nenhum Pokémon consegue alcançá-lo.', 'grass', NULL, 0.9, 21.6, 3, FALSE, 252, 16),
(254, 'Sceptile', 'Pokémon Floresta', 'As folhas dos braços cortam como espadas. As sementes das costas são cheias de nutrientes e ajudam as árvores da floresta a crescer.', 'grass', NULL, 1.7, 52.2, 3, FALSE, 252, 36),
(255, 'Torchic', 'Pokémon Pintinho', 'Guarda uma chama dentro do corpo, por isso é quentinho de abraçar. Segue o treinador para todo lado com passinhos desengonçados.', 'fire', NULL, 0.4, 2.5, 3, TRUE, 255, NULL),
(256, 'Combusken', 'Pokémon Ave Jovem', 'Solta chamas pelo bico e dá chutes muito fortes. O grito dele é tão alto que distrai os adversários.', 'fire', 'fighting', 0.9, 19.5, 3, FALSE, 255, 16),
(257, 'Blaziken', 'Pokémon Labareda', 'Tem pernas tão fortes que pula um prédio de 30 andares. Quanto mais forte o inimigo, mais forte queimam as chamas dos pulsos.', 'fire', 'fighting', 1.9, 52, 3, FALSE, 255, 36),
(258, 'Mudkip', 'Pokémon Peixe da Lama', 'A barbatana da cabeça funciona como um radar e sente tudo o que acontece em volta. Respira debaixo d''água pelas guelras das bochechas.', 'water', NULL, 0.4, 7.6, 3, TRUE, 258, NULL),
(259, 'Marshtomp', 'Pokémon Peixe da Lama', 'O corpo coberto por uma película grudenta deixa ele viver fora da água. É mais rápido andando na lama do que nadando.', 'water', 'ground', 0.7, 28, 3, FALSE, 258, 16),
(260, 'Swampert', 'Pokémon Peixe da Lama', 'É tão forte que arrasta pedras de mais de uma tonelada. Sente pelas barbatanas quando uma tempestade está chegando.', 'water', 'ground', 1.5, 81.9, 3, FALSE, 258, 36);

-- Sinnoh: os 3 iniciais e as evoluções
INSERT INTO pokemon (id, name, category, description, type1, type2, height, weight, generation, starter, first_stage_id, evolution_level) VALUES
(387, 'Turtwig', 'Pokémon Folhinha', 'O casco é feito de terra e endurece quando ele bebe água. Se estiver com sede, a folha da cabeça murcha.', 'grass', NULL, 0.4, 10.2, 4, TRUE, 387, NULL),
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
(498, 'Tepig', 'Pokémon Porco de Fogo', 'Solta fogo pelo focinho, e quando está resfriado sai fumaça preta no lugar. Adora frutinhas assadas, mas às vezes se empolga e queima tudo.', 'fire', NULL, 0.5, 9.9, 5, TRUE, 498, NULL),
(499, 'Pignite', 'Pokémon Porco de Fogo', 'Tudo o que come vira combustível para o fogo da barriga. Quando esse fogo aumenta, ele fica mais rápido e mais forte.', 'fire', 'fighting', 1, 55.5, 5, FALSE, 498, 17),
(500, 'Emboar', 'Pokémon Porco de Fogo Gigante', 'Tem uma barba de fogo e golpes de luta rápidos e poderosos. Apesar da cara de bravo, se importa muito com os amigos.', 'fire', 'fighting', 1.6, 150, 5, FALSE, 498, 36),
(501, 'Oshawott', 'Pokémon Lontra do Mar', 'Usa a concha da barriga como uma lâmina e revida na hora quando é atacado. Essa concha é feita do mesmo material das garras.', 'water', NULL, 0.5, 5.9, 5, TRUE, 501, NULL),
(502, 'Dewott', 'Pokémon Disciplina', 'Treina pesado para lutar com as duas conchas ao mesmo tempo. Cada Dewott acaba criando o seu próprio jeito de lutar.', 'water', NULL, 0.8, 24.5, 5, FALSE, 501, 17),
(503, 'Samurott', 'Pokémon Formidável', 'Parte da armadura das patas da frente vira uma espada enorme. Um golpe só dela basta para derrubar um adversário.', 'water', NULL, 1.5, 94.6, 5, FALSE, 501, 36);

-- Líderes de ginásio, na ordem das insígnias
INSERT INTO gym_leader (generation, badge, name, city, types) VALUES
(1, 1, 'Brock', 'Cidade de Pewter', 'rock'),
(1, 2, 'Misty', 'Cidade de Cerulean', 'water'),
(1, 3, 'Tenente Surge', 'Cidade de Vermilion', 'electric'),
(1, 4, 'Erika', 'Cidade de Celadon', 'grass'),
(1, 5, 'Koga', 'Cidade de Fuchsia', 'poison'),
(1, 6, 'Sabrina', 'Cidade de Saffron', 'psychic'),
(1, 7, 'Blaine', 'Ilha Cinnabar', 'fire'),
(1, 8, 'Giovanni', 'Cidade de Viridian', 'ground'),
(2, 1, 'Falkner', 'Cidade de Violet', 'flying'),
(2, 2, 'Bugsy', 'Cidade de Azalea', 'bug'),
(2, 3, 'Whitney', 'Cidade de Goldenrod', 'normal'),
(2, 4, 'Morty', 'Cidade de Ecruteak', 'ghost'),
(2, 5, 'Chuck', 'Cidade de Cianwood', 'fighting'),
(2, 6, 'Jasmine', 'Cidade de Olivine', 'steel'),
(2, 7, 'Pryce', 'Cidade de Mahogany', 'ice'),
(2, 8, 'Clair', 'Cidade de Blackthorn', 'dragon'),
(3, 1, 'Roxanne', 'Cidade de Rustboro', 'rock'),
(3, 2, 'Brawly', 'Cidade de Dewford', 'fighting'),
(3, 3, 'Wattson', 'Cidade de Mauville', 'electric'),
(3, 4, 'Flannery', 'Cidade de Lavaridge', 'fire'),
(3, 5, 'Norman', 'Cidade de Petalburg', 'normal'),
(3, 6, 'Winona', 'Cidade de Fortree', 'flying'),
(3, 7, 'Tate e Liza', 'Cidade de Mossdeep', 'psychic'),
(3, 8, 'Wallace (Juan no Emerald)', 'Cidade de Sootopolis', 'water'),
(4, 1, 'Roark', 'Cidade de Oreburgh', 'rock'),
(4, 2, 'Gardenia', 'Cidade de Eterna', 'grass'),
(4, 3, 'Maylene', 'Cidade de Veilstone', 'fighting'),
(4, 4, 'Crasher Wake', 'Cidade de Pastoria', 'water'),
(4, 5, 'Fantina', 'Cidade de Hearthome', 'ghost'),
(4, 6, 'Byron', 'Cidade de Canalave', 'steel'),
(4, 7, 'Candice', 'Cidade de Snowpoint', 'ice'),
(4, 8, 'Volkner', 'Cidade de Sunyshore', 'electric'),
(5, 1, 'Cilan, Chili e Cress', 'Cidade de Striaton', 'grass,fire,water'),
(5, 2, 'Lenora', 'Cidade de Nacrene', 'normal'),
(5, 3, 'Burgh', 'Cidade de Castelia', 'bug'),
(5, 4, 'Elesa', 'Cidade de Nimbasa', 'electric'),
(5, 5, 'Clay', 'Cidade de Driftveil', 'ground'),
(5, 6, 'Skyla', 'Cidade de Mistralton', 'flying'),
(5, 7, 'Brycen', 'Cidade de Icirrus', 'ice'),
(5, 8, 'Drayden (Iris no White)', 'Cidade de Opelucid', 'dragon');
