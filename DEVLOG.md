# Diário de desenvolvimento — Selo de Areia

## Aula 08 — 07/10/2026 (implementada em 28/10/2026)

- O que fiz: comecei a arena de templo, com chão e objetos em TileMapLayers separados e colisão nos obstáculos e no muro.
- Movimento: personagem em quatro direções, animação por direção, colisor nos pés e câmera limitada ao mapa.
- Decisão: adaptei a vila do roteiro para uma arena fechada de 40 × 24 peças, visível em uma tela, como pede o modo Horda do projeto.
- O que travou e como resolvi: o mapa incorporava o TileSet ao salvar; carreguei o recurso externo antes de salvar a cena, mantendo o mesmo TileSet nas duas camadas.
- Validação: 25 verificações de estrutura, movimento e colisão aprovadas no Godot 4.7.2, além de captura visual; implementação assistida por OpenAI Codex e commits com data real.

## Aula 09 — 21/10/2026 (implementada em 28/10/2026)

- O que fiz: múmias com perseguição direta, quatro nascedouros e horda que acelera de 2 s até o mínimo de 0,5 s entre inimigos.
- Vida e final: três vidas, Hurtbox separada do corpo, um segundo de invencibilidade, HUD, vitória aos 60 s, derrota sem vida e Enter para recomeçar.
- Decisão: segui a entrega de sobrevivência das páginas 1 e 7 da aula 09, conforme escolha do aluno; ataque e chefe continuam planejados para a próxima etapa.
- Cuidado de implementação: separei as camadas de mundo, jogador e inimigo e acrescentei uma trava para impedir que vitória e derrota agendem duas trocas de cena no mesmo quadro.
- Validação: 62 verificações aprovadas no Godot 4.7.2 e capturas visuais; o relógio real venceu após 60,12 s em teste isolado, e horda, dano, derrota e reinício foram verificados separadamente por um teste externo ao jogo.
