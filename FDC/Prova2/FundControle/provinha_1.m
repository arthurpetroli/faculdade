% 1
syms s X1 X2 X3 F

A=[4*s^2+2*s+3 -s 0 ; -s 6+8*s+4*s^2 -6; 0 -6 6+4*s+4*s^2]
X=[X1; X2; X3]
B=[0; F; 0]

X=inv(A)*B
pretty(X)

G=tf([0 0 0 0 12 6 9], [32 112 230 294 189 108 0])
step(G)

% 2
syms s I1 I2 Ve

A=[8+1/(2*s)+1/(9*s) -2-1/(9*s); -2-1/(9*s) 8+13*s+1/(9*s)]
X=[I1 ; I2]
B=[Ve ; 0]

X=inv(A)*(B)

pretty(X)

G=tf([468 26 0 0], [1872 1223 96 1])
step(G)

% 3
syms s I1 I2 Ve

A=[6*s+13 -13; -13 20+2*s]
X=[I1 ; I2]
B=[Ve ; 0]

X=inv(A)*(B)

pretty(X)

G=tf([0 26 0], [12 146 91])
step(G)

% 4
syms s X1 X2 F

A=[8*s^2+23*s+15 -13*s-7; -13*s-7 3*s^2+21*s+7]
X=[X1; X2]
B=[0; F]

X=inv(A)*B
pretty(X)

G=tf([0 0 0 13 7], [24 237 415 294 56])
step(G)

