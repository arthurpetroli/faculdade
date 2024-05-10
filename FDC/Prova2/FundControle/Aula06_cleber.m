% 1

% LETRA A

syms s I1 I2 Ve
A=[1+s -s; -s 2+s]
X=[I1 ; I2]
B=[Ve ; 0]

X=inv(A)*(B)

pretty(X)

%G=tf([2 0], [3 2])

%step(G)

% LETRA B

syms s I1 I2 Ve
A=[2 -1;-1 s+1+(1/(2*s))]
X=[I1 ; I2]                            
B=[Ve ; 0]

X=inv(A)*(B)

pretty(X)

G=tf([1 0], [2 1 1])

% Exercicio 2

% LETRA A

syms s I1 I2 Ve
A=[2*s+2 -2;-2 (4+2*s)]
X=[I1 ; I2]                            
B=[Ve ; 0]

X=inv(A)*(B)

pretty(X)

% LETRA B

syms s I1 I2 Ve

A=[4/s+4 -2-2/s; -2-2/s 4+2*s+2/s]
X=[I1 ; I2]
B=[Ve ; 0]

X=inv(A)*(B)

pretty(X)

G=tf([2 0], [3 2])

step(G)


%%%% 3 malhas

% Exemplo 1
syms s I1 I2 I3 Ve

A=[(2*s+2) -(2*s+1) -1; -(2*s+2) (9*s+1) -4*s; -1 -4*s (4*s+1+1/s)]
X=[I1 ; I2 ; I3]
B=[Ve ; 0 ; 0]

X=inv(A)*(B)

pretty(X)

G=tf([2 0], [3 2])

%step(G)

% Exemplo 2

syms s I1 I2 I3 Ve

A=[(s+1) -s -1; -s (2*s+1) -1; -1 -1 (s+2)]
X=[I1 ; I2 ; I3]
B=[Ve ; 0 ; 0]

X=inv(A)*(B)

pretty(X)

G=tf([1 2 1], [1 5 2 0])
step(G)


