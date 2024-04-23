% 2 blocos sem atrito


syms s X1 X2 F
A=[s^2+s+1 -s-1; -s-1 s^2+s+1]
X=[X1; X2]
B=[F ; 0]

X=inv(A)*B
pretty(X)

%G=tf([1 1], [1 2 2 0 0])
%step(G)

%% Bloco na parede

syms s X1 X2 F
A=[s^2+3*s+1 -3*s-1; -1-3*s s^2+4*s+1]
X=[X1 ; X2]
B=[F ; 0]

X=inv(A)*(B)

pretty(X)

G=tf([3 1], [1 7 5 1 0])
step(G)

G=tf([3 1], [1 7 5 1])
step(G)

%% Ultimo exercicio

syms s X1 X2 F
A=[s^2+6*s+9 -3*s-5; -5-3*s 2*s^2+5*s+5]
X=[X1 ; X2]
B=[F ; 0]

X=inv(A)*(B)

pretty(X)

G=tf([2 5 5], [2 17 44 45 20])
step(G)

G=tf([2 5 5], [2 17 44 45])
%step(G)