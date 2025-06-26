# 📋 Documentação Técnica - Jogo das Bolinhas

## 🏗️ Arquitetura do Código

### Estrutura HTML
```html
<div id="gameArea">          <!-- Container principal -->
  <div id="scoreboard">      <!-- Placar de pontos -->
  <div id="timer">           <!-- Cronômetro -->
  <div id="countdown">       <!-- Contagem regressiva -->
  <button id="startBtn">     <!-- Botão de início -->
</div>
```

### Variáveis Globais JavaScript
```javascript
let score = 0;              // Pontuação atual
let gameDuration = 15;      // Duração do jogo em segundos
let gameActive = false;     // Estado do jogo
let intervalId;             // ID do intervalo de criação de bolinhas
let timerInterval;          // ID do intervalo do cronômetro
```

## 🔧 Funções Principais

### `createBall()`
- **Propósito**: Cria uma nova bolinha na tela
- **Funcionamento**:
  1. Verifica se o jogo está ativo
  2. Cria elemento div com classe 'ball'
  3. Define posição aleatória (x, y)
  4. Adiciona event listener para clique
  5. Remove automaticamente após 2 segundos

### `startGame()`
- **Propósito**: Inicia uma nova partida
- **Fluxo**:
  1. Reset das variáveis
  2. Esconde botão de início
  3. Executa contagem regressiva
  4. Inicia cronômetro e spawn de bolinhas
  5. Define fim do jogo após duração especificada

### `showCountdown(number, callback)`
- **Propósito**: Exibe animação de contagem regressiva
- **Parâmetros**:
  - `number`: Número a ser exibido
  - `callback`: Função executada após animação

### `runPreGameCountdown(callback)`
- **Propósito**: Executa contagem regressiva de 3 segundos
- **Implementação**: Recursiva com setTimeout

## 🎨 Sistema de Animações CSS

### Animação PopIn
```css
@keyframes popIn {
  0% {
    transform: scale(0);
    opacity: 0;
  }
  100% {
    transform: scale(1);
    opacity: 1;
  }
}
```
- **Duração**: 0.3s
- **Easing**: ease-out
- **Efeito**: Bolinha aparece crescendo do centro

### Animação FadeOut
```css
@keyframes fadeOut {
  0% { opacity: 1; }
  80% { opacity: 1; }
  100% { opacity: 0; }
}
```
- **Duração**: 2s
- **Easing**: ease-in
- **Efeito**: Bolinha permanece visível por 80% do tempo, depois desaparece

### Animação Countdown
```css
@keyframes countdownAnim {
  0% {
    transform: translate(-50%, -50%) scale(2);
    opacity: 0;
  }
  50% {
    opacity: 1;
  }
  100% {
    transform: translate(-50%, -50%) scale(1);
    opacity: 0;
  }
}
```
- **Duração**: 1s
- **Efeito**: Número aparece grande e diminui enquanto desaparece

## 🎯 Algoritmos de Posicionamento

### Posicionamento Aleatório
```javascript
const x = Math.random() * (window.innerWidth - 50);
const y = Math.random() * (window.innerHeight - 50);
```
- **Margem de Segurança**: 50px para evitar bolinhas cortadas
- **Área Útil**: Toda a viewport menos as margens

## ⏱️ Sistema de Timing

### Intervalos Utilizados
- **Spawn de Bolinhas**: 500ms (2 bolinhas por segundo)
- **Cronômetro**: 1000ms (atualização a cada segundo)
- **Vida da Bolinha**: 2000ms (2 segundos na tela)
- **Contagem Regressiva**: 1000ms por número

### Cálculo de Performance
```
Bolinhas por segundo: 2
Duração do jogo: 15s
Máximo teórico de bolinhas: 30
Tempo de reação médio: ~300ms
Pontuação realística: 15-25 pontos
```

## 🎨 Sistema de Cores

### Paleta Principal
```css
/* Fundo */
background-color: #028db0;  /* Azul oceano */

/* Bolinhas */
background: radial-gradient(circle at 30% 30%, #ff4b2b, #ff416c);
/* Gradiente vermelho-rosa */

/* Sombras */
box-shadow: 0 0 15px #ff416c88, 0 0 30px #ff416c55;
/* Brilho rosa com transparência */

/* Interface */
background: rgba(255, 255, 255, 0.5);  /* Branco translúcido */
```

## 🔄 Ciclo de Vida do Jogo

1. **Estado Inicial**
   - `gameActive = false`
   - Botão "Iniciar Jogo" visível
   - Score = 0, Timer = 15s

2. **Pré-Jogo**
   - Contagem regressiva 3, 2, 1
   - Botão escondido
   - Preparação dos intervalos

3. **Jogo Ativo**
   - `gameActive = true`
   - Spawn contínuo de bolinhas
   - Cronômetro regressivo
   - Detecção de cliques

4. **Fim do Jogo**
   - `gameActive = false`
   - Limpeza de intervalos
   - Remoção de bolinhas restantes
   - Exibição da pontuação
   - Botão "Jogar Novamente"

## 🐛 Tratamento de Erros

### Verificações Implementadas
- Verificação de `gameActive` antes de criar bolinhas
- Verificação de `gameActive` antes de contar pontos
- Limpeza automática de intervalos no fim do jogo
- Remoção automática de bolinhas órfãs

### Possíveis Melhorias
- Tratamento de redimensionamento da janela
- Verificação de suporte a animações CSS
- Fallback para navegadores antigos
- Prevenção de múltiplos cliques na mesma bolinha

## 📱 Responsividade

### Adaptações Implementadas
- Uso de `vw` e `vh` para dimensões
- Posicionamento baseado em `window.innerWidth/Height`
- Overflow hidden para evitar scroll

### Limitações Atuais
- Tamanho fixo das bolinhas (80px)
- Interface não otimizada para mobile
- Sem detecção de orientação

## 🚀 Otimizações de Performance

### Implementadas
- Remoção automática de elementos DOM
- Uso de `setTimeout` em vez de `setInterval` para limpeza
- Event listeners removidos automaticamente com elementos

### Possíveis Melhorias
- Object pooling para bolinhas
- RequestAnimationFrame para animações
- Debounce para redimensionamento
- Lazy loading de recursos

## 🔧 Configurações Modificáveis

### Gameplay
```javascript
let gameDuration = 15;           // Duração em segundos
setInterval(createBall, 500);    // Frequência de spawn
setTimeout(() => ball.remove(), 2000);  // Vida da bolinha
```

### Visual
```css
.ball {
  width: 80px;                   /* Tamanho da bolinha */
  height: 80px;
}

body {
  background-color: #028db0;     /* Cor de fundo */
}
```

### Animações
```css
animation: popIn 0.3s ease-out, fadeOut 2s ease-in forwards;
```

## 📊 Métricas de Jogo

### Dados Coletáveis
- Pontuação final
- Tempo de reação médio
- Taxa de acerto (cliques/bolinhas spawned)
- Distribuição de cliques por região da tela

### Implementação Futura
```javascript
// Exemplo de coleta de métricas
let gameMetrics = {
  ballsSpawned: 0,
  ballsClicked: 0,
  clickTimes: [],
  clickPositions: []
};
```
