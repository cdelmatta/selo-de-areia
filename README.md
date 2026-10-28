# Selo de Areia

Um explorador preso em um templo perdido enfrenta ondas de múmias lentas. No jogo final, precisará resistir até o despertar do guardião e derrotá-lo.

Projeto de **Jogos Digitais II — 2026/2**, desenvolvido em Godot 4.7.2, com renderizador **Compatibility**.

## A carta

| Campo | Definição |
| --- | --- |
| Tema | Templo perdido com múmias lentas |
| Tipo sorteado | Chefe |
| Modo escolhido | Horda: arena 2D vista de cima |
| Objetivo final | Resistir às ondas até o chefe surgir e derrotá-lo |

## Estado desta etapa

**Aula 09 — 21/10:** partida de sobrevivência com múmias que perseguem o explorador, horda crescente, três vidas, invencibilidade por um segundo após dano, placar e telas de vitória/derrota. Resistir por **60 segundos** vence esta versão; perder as três vidas encerra a partida em derrota.

O tipo sorteado continua sendo **Chefe**. Conforme a orientação das páginas 1 e 7 do roteiro da aula 09, todos os tipos entregam primeiro a base de sobrevivência por 60 segundos. A ficha Chefe, o ataque e a batalha final ficam para a próxima etapa. A aula 10 também tratará de contornar obstáculos: nesta versão, as múmias fazem perseguição direta e podem parar nos pilares.

A vila do exercício foi adaptada para o templo do projeto. O mapa mantém 40 × 24 peças de 16 pixels. A câmera é filha do jogador e tem limites nas bordas; seu zoom é 1 para mostrar a arena inteira, conforme o modo Horda. A janela abre ampliada para 1280 × 768, com filtro Nearest e escala inteira.

![Partida de sobrevivência na aula 09](docs/aula-09.png)

A [captura da aula 08](docs/aula-08.png) registra a etapa de mapa, colisão e movimento, antes dos inimigos.

## Como abrir e jogar

1. Clone este repositório.
2. No gerenciador da Godot 4.7.2, escolha **Importar** e selecione `project.godot`.
3. Abra o projeto e pressione **F5**.

| Controle | Ação |
| --- | --- |
| WASD ou setas | Mover o explorador |
| Enter na tela de fim | Iniciar outra partida |

Para vencer agora, mantenha distância das múmias e use os espaços entre os pilares até o tempo acabar. O jogador anda a 70 px/s; as múmias, a 40 px/s. Ainda não há ataque nesta etapa.

## Organização

- `scenes/`: arena e, nas próximas etapas, telas de fim.
- `entities/`: personagem e demais entidades reutilizáveis.
- `scripts/`: comportamento em GDScript.
- `tiles/`: TileSet compartilhado pelas camadas do mapa.
- `sprites/`: arte e licenças.
- `docs/`: capturas de tela.
- `DEVLOG.md`: decisões, dificuldades e soluções por aula.

## Histórico das aulas

| Tag | Data da aula | Conteúdo |
| --- | --- | --- |
| `aula-08` | 07/10/2026 | Arena, colisão e personagem em quatro direções |
| `aula-09` | 21/10/2026 | Inimigos, horda crescente, vida, HUD, vitória em 60 s e derrota |

Para abrir uma etapa antiga sem alterar a cópia de trabalho atual, crie outra pasta: `git worktree add ../selo-aula-08 aula-08`.

As datas acima identificam as aulas. A implementação começou em **28/10/2026**; os commits mantêm suas datas reais.

## Validação

O projeto passou por 25 verificações na aula 08 e 62 na aula 09 no Godot 4.7.2, além de revisão das capturas. O teste do relógio de 60 segundos foi isolado; horda, perseguição, dano, invencibilidade, derrota e reinício foram testados separadamente. O código desses testes ficou fora do projeto.

Para conferir manualmente: rode com F5, mova-se até as paredes e pilares, espere as múmias nascerem e teste o dano ficando parado. Na tela de derrota, pressione Enter e confirme que a vida e o tempo reiniciam. Em outra partida, fuja por 60 segundos para chegar à vitória.

## Créditos e fontes

- Base didática: roteiros das aulas 08 e 09 e enunciado do projeto, do Prof. Ezéfferth C. A. Fernandes, Jogos Digitais II.
- Código: adaptado e implementado com auxílio de **OpenAI Codex**. Cada script registra essa origem no início. O código deve ser estudado e compreendido para a apresentação.
- Cenário: [Tiny Dungeon, por Kenney](https://kenney.nl/assets/tiny-dungeon), licença [CC0](https://creativecommons.org/publicdomain/zero/1.0/). Recortes no TileSet e coloração quente dos objetos pela Godot.
- Explorador: `Ranger-M-01`, do pacote [24x32 characters with faces, por Svetlana Kushnariova (Cabbit)](https://opengameart.org/content/24x32-characters-with-faces-big-pack), contato exigido pela autora: **lana-chan@yandex.ru**. Licença [CC BY 3.0](https://creativecommons.org/licenses/by/3.0/). Recortes de animação e remoção do fundo por material de chave de cor na Godot.
- Múmias: [Mummies, por Jordan Irwin (AntumDeluge)](https://opengameart.org/content/mummies), no estilo de Cabbit, licença [CC BY 3.0](https://creativecommons.org/licenses/by/3.0/). Uso de um quadro da folha `mummy-01`, com coloração arenosa pela Godot.

Os PNGs originais foram preservados. O material `sprites/retirar_fundo.gdshader` torna uma cor de fundo transparente durante a renderização, sem alterar as imagens. As fontes completas e as cópias das licenças estão em `sprites/`.
