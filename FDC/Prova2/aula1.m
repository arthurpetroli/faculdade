num =  100  ; %coeficientes parte de cima
den = [1 15 100]  ; %coeficientes da parte de baixo
G = tf(num, den); %faz a função transferencia

stepinfo(G)  
% %UP -> overshoot
% Tp  -> peaktime
% Ts  -> settlingtime
% Tr  -> risetime