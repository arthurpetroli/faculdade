# Robo Catatau (patrocinado pelo chefe)

## Descrição

Este robo utiliza duas tecnicas muito utilizadas pelos robos dos tops 1x1, `Wave Surfing` para movimento e `GuessFactor` para mira.

## GuessFactor

A tecnica de GuessFactor é uma forma de mensurar angulos de tiros levando em conta a posição relativa do inimigo quando ele atira e o angulo máximo de escape do inimigo da mira do robo. Uma GuessFactor com valor 1.0 significa que o inimigo atingiu o angulo máximo de escape seguindo na direção horária, 0.0 o inimigo está bem na mira e -1.0 ele atingiu angulo de escape máximo na direção anti-horária. O local onde temos que atirar é a soma de vários movimentos do inimigo, o movimento que tem a maior soma é o que tem a maior probabilidade de acerto.

A classe `WaveBullet` armazena informações de posição do nosso robo, quando que atiramos, a direção que o oponente está se movendo (horario ou anti-horario), poder de tiro e a direção da nossa GuessFactor (mira), nela também temos uma função para checar a onda, caso nosso ela tenha acertado ela irá analisar a posição aproximada do inimigo, atualizar a direção da GuessFactor e retornar true indicando que a onda não precisa mais ser checada.

Na nossa classe `Catatau` temos um array de `WaveBullet` que armazena todas as ondas e elas são atualizadas em `onScannedRobot()`, a cada robo scaneado nós pegamos a posição dele e processamos as ondas pelo método `checkWave()` em `WaveBullet`, o poder de tiro é calculado logo em seguida de acordo com a distância do inimigo e a direção da GuessFactor é analisada utilizando posições do inimigo para pegar o melhor indice do angulo e ajustar a arma, após isso o tiro é feito quando a arma não precisa mais ser ajustada e onda é adicionada ao array de ondas.

GuessFactor também é utilizado em Wave Surfing pois cada onda nele é um perigo previsto de um tiro inimigo, então o robo tenta se mover para a área de menor perigo.

## Wave Surfing

A tecnica de Wave Surfing é uma tecnica em conjunto com GuessFactor mas um pouco mais complexa de se implementar, uma onda tenta representar todas as possiveis localizações de um tiro inimigo, o algoritmo tenta projetar o nível de perigo da área de cada onda para poder se movimentar entre as direções de menor perigo. A estrutura do algoritmo segue algumas mesmas váriaveis usadas em GuessFactor: nossa posição, posição do inimigo e a energia dele (para detectar perdas de energia), ArrayList de ondas inimigas que são incrementadas toda vez que tomamos um tiro para podermos evitar dano no futuro, ArrayList da nossa posição e da posição do inimigo em angulos (1 para horário e -1 para anti-horário igual em GuessFactor) e por fim um ArrayList das orientações passadas do inimigo.

Nossa função `updateWaves()` busca atualizar a distância percorrida das ondas inimigas pelo tempo que eles soltaram um tiro e a velocidade do tiro, com isso podemos estimar essa distância e atualiza-la, também verificamos se ela é maior que a distância que estivemos quando ele atirou, caso ele já esteja longe removemos essa onda.

`getClosestSurfableWave()` é uma função que busca a onda mais próxima que ainda não foi ultrapassada, ela é utilizada para calcular a distância da onda e a distância que estamos dela, com isso podemos calcular a direção que devemos seguir para escapar do tiro.

`getFactorIndex()` funciona parecido com o melhor indice em GuessFactor, o angulo offset é o angulo que a onda passada por parametro mirou e nos acertou, após isso pegamos o guess factor que neste caso é a divisão do máximo angulo de escape (o valor do sinal desse fator é invertido caso estejamos indo na direção anti-horaria quando o tiro foi dado).

Para checar qual onda que nos atirou, nós checamos cada uma para ver se a distância percorrida está em 50 pixels da distância que estávamos quando ele atirou e se a velocidade é a mesma que a do tiro, quando acharmos a onda que nos atingiu nós chamamos `logHit()` para atualizar nossa posição e depois removemos a onda.

Um dos aspectos mais importantes do Wave Surfing está na função `predictPosition()`, nela a cada tick de tempo nós tentamos prever o angulo absoluto que estamos tentando nos mover, `wallSmoothing()` é chamado para fazer essa predição e depois atualizar a direção, velocidade e taxa máxima de rotação.

A função `checkDanger()` procura o fator para uma onda inimiga com uma posição prevista pela `predictPosition()` para retornar o nível de perigo daquela área. A função `doSurfing()` é a responsavel por mover o robo de acordo com as ondas.

### Referências

[Traditional GuessFactor](https://robowiki.net/wiki/GuessFactor_Targeting_(traditional))
[GuessFactor](https://robowiki.net/wiki/GuessFactor)
[Precise Prediction](https://robowiki.net/wiki/Precise_Prediction)
[Wave Surfing](https://robowiki.net/wiki/Wave_Surfing)
