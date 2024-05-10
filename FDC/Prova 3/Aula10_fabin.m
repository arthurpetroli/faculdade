% ex 1

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

% ex 2
OS = 10
cidilha = -log(OS/100) / sqrt(pi^2 + log(OS/100)^2)
wn = 5 / 2 / cidilha
K = wn^2

% ex 3
OS = 5
b=16
cidilha = -log(OS/100) / sqrt(pi^2 + log(OS/100)^2)
a = cidilha*2*sqrt(b)
