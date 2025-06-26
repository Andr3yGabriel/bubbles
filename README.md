# 🎯 Jogo das Bolinhas

Um jogo web interativo e divertido onde o objetivo é clicar no maior número de bolinhas possível dentro de um tempo limitado.

## 📋 Descrição

O "Jogo das Bolinhas" é um jogo de reflexos desenvolvido em HTML, CSS e JavaScript puro. O jogador deve clicar nas bolinhas que aparecem aleatoriamente na tela antes que elas desapareçam, acumulando pontos durante um período de 15 segundos.

## 🎮 Como Jogar

1. **Escolher Dificuldade**: Selecione entre Fácil, Médio ou Difícil
2. **Contagem Regressiva**: Aguarde a contagem regressiva de 3 segundos
3. **Jogar**: Clique nas bolinhas que aparecem na tela
4. **Objetivo**: Acumule o máximo de pontos possível em 60 segundos
5. **Fim**: Veja sua pontuação final e escolha jogar novamente

## ✨ Características

### Gameplay
- **Duração**: 60 segundos por partida
- **Spawn Rate**: Nova bolinha a cada 500ms
- **Tempo de Vida**: Cada bolinha permanece na tela por 2 segundos
- **Níveis de Dificuldade**: 3 níveis disponíveis
  - **Fácil**: Bolinhas paradas (pontuação normal)
  - **Médio**: Bolinhas se movem devagar (pontuação x1.5)
  - **Difícil**: Bolinhas se movem rapidamente (pontuação x2)
- **Pontuação**: Varia conforme o tamanho da bolinha e dificuldade
  - Bolinhas pequenas: 3/4/6 pontos (Fácil/Médio/Difícil)
  - Bolinhas médias: 2/3/4 pontos (Fácil/Médio/Difícil)
  - Bolinhas grandes: 1/1/2 pontos (Fácil/Médio/Difícil)

### Visual
- **Design Moderno**: Interface com gradientes e sombras
- **Animações Suaves**: 
  - PopIn: Animação de entrada das bolinhas
  - FadeOut: Animação de saída das bolinhas
  - Countdown: Animação da contagem regressiva
- **Cores Vibrantes**: 6 cores diferentes (vermelho, azul, verde, roxo, laranja, amarelo)
- **Tamanhos Variados**: 3 tamanhos diferentes (pequeno, médio, grande)
- **Responsivo**: Adapta-se ao tamanho da tela

### Interface
- **Placar**: Exibição em tempo real dos pontos
- **Timer**: Cronômetro regressivo visível
- **Botão de Início**: Interface intuitiva para começar
- **Feedback Visual**: Efeitos visuais nas bolinhas

## 🛠️ Tecnologias Utilizadas

- **HTML5**: Estrutura da página
- **CSS3**: Estilização e animações
  - Flexbox para layout
  - CSS Grid não utilizado (layout absoluto)
  - Animações CSS (@keyframes)
  - Gradientes radiais e lineares
- **JavaScript (Vanilla)**: Lógica do jogo
  - Manipulação do DOM
  - Event listeners
  - Timers e intervalos
  - Posicionamento aleatório

## 📁 Estrutura do Projeto

```
bubbles/
├── index.html          # Arquivo principal do jogo
├── .git/              # Controle de versão Git
└── README.md          # Documentação (este arquivo)
```

## 🚀 Como Executar

### Método 1: Navegador Local
1. Clone ou baixe o repositório
2. Abra o arquivo `index.html` em qualquer navegador moderno
3. O jogo estará pronto para jogar

### Método 2: Servidor Local
```bash
# Usando Python 3
python -m http.server 8000

# Usando Node.js (se tiver npx)
npx serve .

# Usando PHP
php -S localhost:8000
```

Depois acesse `http://localhost:8000` no navegador.

## 🎯 Mecânicas do Jogo

### Sistema de Pontuação
- Cada bolinha clicada = pontos baseados no tamanho e dificuldade:
  - **Fácil**: Pequenas (3), Médias (2), Grandes (1)
  - **Médio**: Pequenas (4), Médias (3), Grandes (1) + movimento lento
  - **Difícil**: Pequenas (6), Médias (4), Grandes (2) + movimento rápido
- Bolinhas não clicadas não penalizam
- Pontuação máxima teórica: ~720 pontos no nível difícil

### Posicionamento das Bolinhas
- Posição X: Aleatória entre 0 e largura da tela - 50px
- Posição Y: Aleatória entre 0 e altura da tela - 50px
- Tamanho: 60px (pequena), 80px (média), 100px (grande)

### Ciclo de Vida das Bolinhas
1. **Criação**: A cada 500ms durante o jogo
2. **Animação de Entrada**: PopIn (0.3s)
3. **Período Ativo**: Disponível para clique
4. **Animação de Saída**: FadeOut (2s total de vida)
5. **Remoção**: Automática após timeout

## 🎨 Customização

### Modificar Dificuldade
```javascript
// No arquivo index.html, altere estas variáveis:
let gameDuration = 60;        // Duração em segundos
intervalId = setInterval(createBall, 500);  // Frequência de spawn (ms)

// No CSS, altere o tempo de vida das bolinhas:
animation: popIn 0.3s ease-out, fadeOut 2s ease-in forwards;
```

### Personalizar Visual
```css
/* Cores das bolinhas */
.ball-red {
  background: radial-gradient(circle at 30% 30%, #ff4b2b, #ff416c);
}

/* Cor de fundo */
body, #gameArea {
  background-color: #028db0;
}

/* Tamanho das bolinhas */
.ball-small {
  width: 60px;
  height: 60px;
}
```

## 📊 Histórico de Versões

- **v1.0** (073d839): Commit inicial
- **v1.1** (585fb75): Alteração do nome do arquivo
- **v1.2** (ef1fbd7): Mudança de cores e aumento do tamanho das bolinhas
- **v2.0** (atual): Extensão do tempo para 60s, múltiplas cores e tamanhos, sistema de pontuação variável
- **v3.0** (atual): Sistema de 3 níveis de dificuldade com movimento das bolinhas

## 🤝 Contribuição

Para contribuir com o projeto:

1. Fork o repositório
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

## 📝 Ideias para Melhorias

- [ ] Power-ups especiais
- [ ] Ranking local (localStorage)
- [ ] Efeitos sonoros
- [ ] Modo multiplayer
- [ ] Obstáculos na tela
- [ ] Modo escuro/claro

## 📄 Licença

Este projeto é de código aberto. Sinta-se livre para usar, modificar e distribuir.

## 🎮 Divirta-se!

Teste seus reflexos e veja quantas bolinhas consegue clicar em 60 segundos!
