# Diário de desenvolvimento — Selo de Areia

## Aula 08 — 07/10/2026 (implementada em 28/10/2026)

- O que fiz: comecei a arena de templo, com chão e objetos em TileMapLayers separados e colisão nos obstáculos e no muro.
- Movimento: personagem em quatro direções, animação por direção, colisor nos pés e câmera limitada ao mapa.
- Decisão: adaptei a vila do roteiro para uma arena fechada de 40 × 24 peças, visível em uma tela, como pede o modo Horda do projeto.
- O que travou e como resolvi: o mapa incorporava o TileSet ao salvar; carreguei o recurso externo antes de salvar a cena, mantendo o mesmo TileSet nas duas camadas.
- Validação: 25 verificações de estrutura, movimento e colisão aprovadas no Godot 4.7.2, além de captura visual; implementação assistida por OpenAI Codex e commits com data real.
