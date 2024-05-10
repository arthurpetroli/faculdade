% Primeira ordem
% Exercicio 1
a = 50

Tc = 1 / a
Tr = 2.2 / a
Ts = 4 / a 

a =  50 ; % coeficientes parte de cima
den = [0 1 50]  ; % coeficientes da parte de baixo
G = tf(a, den); % faz a função transferencia

stepinfo(G)  
% %UP -> overshoot
% Tp  -> peaktime
% Ts  -> settlingtime
% Tr  -> risetime

% 1 ex C
g=tf([5*0.703], [1 0.703])
step(g)

% 2 ex B
g=tf([1], [1 6])
stepinfo(g)


% Sistema de segunda ordem
% Resposta ao degrau

% 3
roots([1 12 400]) % Dois complexos
g=tf([400], [1 12 400])
step(g)
roots([1 90 900]) % Dois reais -a1 -a2
g=tf([900], [1 90 900])
step(g)
roots([1 30 225]) % Dois reais
g=tf([225], [1 30 225])
step(g)
roots([1 0 625]) % Dois imaginarios
g=tf([625], [1 0 625])
step(g)

% Funcoes de amortecimento
syms s
b = 25
a = 5
cidilha = a / (2*sqrt(b))
% b = wn^2
wn = sqrt(b)
G = wn^2 / (s^2+(2*cidilha*wn*s)+wn^2)

Ts = 4 / (cidilha * wn) % Tempo de acomodação
Tp = pi / (wn*sqrt(1-cidilha^2)) % Instante de pico
Os = exp(-(cidilha*pi)/(sqrt(1-cidilha^2))) % Ultrapassagem percentual

% ex 4
a = 100
den = [1 15 100]  ; %coeficientes da parte de baixo
G = tf(a, den); %faz a função transferencia

stepinfo(G)  



