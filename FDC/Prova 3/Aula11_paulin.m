%% Exercicio 1

clc
A=[3 6 7 2 0 ]
B=[9 4 8 6 0]
C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
-det([A(1) A(4) ;B(1) B(4)])/B(1) -det([A(1) A(5) ;B(1) B(5)])/B(1) 0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
-det([B(1) B(4) ;C(1) C(4)])/C(1) -det([B(1) B(5) ;C(1) C(5)])/C(1) 0]

E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
-det([C(1) C(4) ;D(1) D(4)])/D(1) -det([C(1) C(5) ;D(1) D(5)])/D(1) 0]

F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
-det([D(1) D(4) ;E(1) E(4)])/E(1) -det([D(1) D(5) ;E(1) E(5)])/E(1) 0]

G=[-det([E(1) E(2) ;F(1) F(2)])/F(1) -det([E(1) E(3) ;F(1) F(3)])/F(1)...
-det([E(1) E(4) ;F(1) F(4)])/F(1) -det([E(1) E(5) ;F(1) F(5)])/F(1) 0]

H=[-det([F(1) F(2) ;G(1) G(2)])/G(1) -det([F(1) F(3) ;G(1) G(3)])/G(1)...
-det([F(1) F(4) ;G(1) G(4)])/G(1) -det([F(1) F(5) ;G(1) G(5)])/G(1) 0]


%% Exericicio 3

clc
A=[1 3 3 0]
B=[-1 -3 -2 0]

% Faz primeiro de forma normal, onde der 0 na primeira coluna substitui por
% e

C=[e -det([A(1) A(3) ;B(1) B(3)])/B(1)...
-det([A(1) A(4) ;B(1) B(4)])/B(1) 0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
-det([B(1) B(4) ;C(1) C(4)])/C(1) 0]

E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
-det([C(1) C(4) ;D(1) D(4)])/D(1) 0]

F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
-det([D(1) D(4) ;E(1) E(4)])/E(1) 0]

%% Exericio 4

clc
A=[1 12 39 48 20 0]
B=[1 22 59 38 0 0]
C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
-det([A(1) A(4) ;B(1) B(4)])/B(1) -det([A(1) A(5) ;B(1) B(5)])/B(1) 0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
-det([B(1) B(4) ;C(1) C(4)])/C(1) -det([B(1) B(5) ;C(1) C(5)])/C(1) 0]

E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
-det([C(1) C(4) ;D(1) D(4)])/D(1) -det([C(1) C(5) ;D(1) D(5)])/D(1) 0]

F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
-det([D(1) D(4) ;E(1) E(4)])/E(1) -det([D(1) D(5) ;E(1) E(5)])/E(1) 0]

F = [40 60 0 0 0]

G=[-det([E(1) E(2) ;F(1) F(2)])/F(1) -det([E(1) E(3) ;F(1) F(3)])/F(1)...
-det([E(1) E(4) ;F(1) F(4)])/F(1) -det([E(1) E(5) ;F(1) F(5)])/F(1) 0]

H=[-det([F(1) F(2) ;G(1) G(2)])/G(1) -det([F(1) F(3) ;G(1) G(3)])/G(1)...
-det([F(1) F(4) ;G(1) G(4)])/G(1) -det([F(1) F(5) ;G(1) G(5)])/G(1) 0]

I=[-det([G(1) G(2) ;H(1) H(2)])/H(1) -det([G(1) G(3) ;H(1) H(3)])/H(1)...
-det([G(1) G(4) ;H(1) H(4)])/H(1) -det([G(1) G(5) ;H(1) H(5)])/H(1) 0]

%% Exercicio 5

clc
A=[1 6 8 0]
B=[e 5 20 0]

C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
-det([A(1) A(4) ;B(1) B(4)])/B(1) 0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
-det([B(1) B(4) ;C(1) C(4)])/C(1) 0]

E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
-det([C(1) C(4) ;D(1) D(4)])/D(1) 0]

F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
-det([D(1) D(4) ;E(1) E(4)])/E(1) 0]

%% Exercicio 6
syms e
%e = 0.000001
clc
A=[1 -6 -1 6 0] %s6
B=[1 0 -1 0 0] %s5
C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
-det([A(1) A(4) ;B(1) B(4)])/B(1) -det([A(1) A(5) ;B(1) B(5)])/B(1) 0] %s4

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
-det([B(1) B(4) ;C(1) C(4)])/C(1) -det([B(1) B(5) ;C(1) C(5)])/C(1) 0] % s3

D = [-24 0 0 0 0]

E=[e -det([C(1) C(3) ;D(1) D(3)])/D(1)...
-det([C(1) C(4) ;D(1) D(4)])/D(1) -det([C(1) C(5) ;D(1) D(5)])/D(1) 0]

F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
-det([D(1) D(4) ;E(1) E(4)])/E(1) -det([D(1) D(5) ;E(1) E(5)])/E(1) 0]

G=[-det([E(1) E(2) ;F(1) F(2)])/F(1) -det([E(1) E(3) ;F(1) F(3)])/F(1)...
-det([E(1) E(4) ;F(1) F(4)])/F(1) -det([E(1) E(5) ;F(1) F(5)])/F(1) 0]

roots([1 1 -6 0 -1 -1 6])

%% Exercicio 7
syms k
clc
A=[1 k-6 0] %s6
B=[1 k 0] %s5
C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
0] %s4

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
0] % s3

roots([1 -1 k-6 k])
g = tf([1 1] , [1 1 -6 0] )
rlocus(g)

%% Testes aula

A=[1 31 0]
B=[10 1030 0]
C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
0]


syms e
A=[1 3 5 0]
B=[2 6 3 0]
C=[e -det([A(1) A(3) ;B(1) B(3)])/B(1)...
-det([A(1) A(4) ;B(1) B(4)])/B(1) 0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
-det([B(1) B(4) ;C(1) C(4)])/C(1) 0]

E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
-det([C(1) C(4) ;D(1) D(4)])/D(1) 0]

F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
-det([D(1) D(4) ;E(1) E(4)])/E(1) 0]



A=[1 6 8 0]
B=[1 6 8 0]
C=[4 12 0 0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
-det([B(1) B(4) ;C(1) C(4)])/C(1) 0]

E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
-det([C(1) C(4) ;D(1) D(4)])/D(1) 0]

F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
-det([D(1) D(4) ;E(1) E(4)])/E(1) 0]



clc
A=[1 12 39 48 20]
B=[1 22 59 38 0]
C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
-det([A(1) A(4) ;B(1) B(4)])/B(1) -det([A(1) A(5) ;B(1) B(5)])/B(1) 0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
-det([B(1) B(4) ;C(1) C(4)])/C(1) -det([B(1) B(5) ;C(1) C(5)])/C(1) 0]

E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
-det([C(1) C(4) ;D(1) D(4)])/D(1) -det([C(1) C(5) ;D(1) D(5)])/D(1) 0]

F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
-det([D(1) D(4) ;E(1) E(4)])/E(1) -det([D(1) D(5) ;E(1) E(5)])/E(1) 0]

F = [40 60 0 0 0]

G=[-det([E(1) E(2) ;F(1) F(2)])/F(1) -det([E(1) E(3) ;F(1) F(3)])/F(1)...
-det([E(1) E(4) ;F(1) F(4)])/F(1) -det([E(1) E(5) ;F(1) F(5)])/F(1) 0]

H=[-det([F(1) F(2) ;G(1) G(2)])/G(1) -det([F(1) F(3) ;G(1) G(3)])/G(1)...
-det([F(1) F(4) ;G(1) G(4)])/G(1) -det([F(1) F(5) ;G(1) G(5)])/G(1) 0]

I=[-det([G(1) G(2) ;H(1) H(2)])/H(1) -det([G(1) G(3) ;H(1) H(3)])/H(1)...
-det([G(1) G(4) ;H(1) H(4)])/H(1) -det([G(1) G(5) ;H(1) H(5)])/H(1) 0]

%%
syms k
A=[1 77 0]
B=[18 k 0]

C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
0]

%ganho seja 1386 para opçao marginalmente estavel
A=[1 77 0]
B=[18 1386 0]

C=[36 0 0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
0]
%%
%Ver local das raizes do polinomio
g = tf([1] , [3 7 6 4 7 8 2 6])
rlocus(g)

g = tf([1 8] , [1 -1 3 -3 3 -2])
rlocus(g)

g = tf([20] , [1 1 12 22 39 59 48 38 20])
rlocus(g)

g = tf([1] , [1 0 6 5 8 20])
rlocus(g)

g = tf([1 20] , [1 5 6 0])
rlocus(g)

%% livro1

clc
A=[1 11 200]
B=[6 6 0]

C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
0]

E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
0]


%% livro2
clc
A=[1 10 48 128 128]
B=[3 24 96 192 0]
C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
-det([A(1) A(4) ;B(1) B(4)])/B(1) -det([A(1) A(5) ;B(1) B(5)])/B(1) 0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
-det([B(1) B(4) ;C(1) C(4)])/C(1) -det([B(1) B(5) ;C(1) C(5)])/C(1) 0]

D=[12 64 128 0 0]

E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
-det([C(1) C(4) ;D(1) D(4)])/D(1) -det([C(1) C(5) ;D(1) D(5)])/D(1) 0]

F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
-det([D(1) D(4) ;E(1) E(4)])/E(1) -det([D(1) D(5) ;E(1) E(5)])/E(1) 0]

G=[-det([E(1) E(2) ;F(1) F(2)])/F(1) -det([E(1) E(3) ;F(1) F(3)])/F(1)...
-det([E(1) E(4) ;F(1) F(4)])/F(1) -det([E(1) E(5) ;F(1) F(5)])/F(1) 0]

H=[-det([F(1) F(2) ;G(1) G(2)])/G(1) -det([F(1) F(3) ;G(1) G(3)])/G(1)...
-det([F(1) F(4) ;G(1) G(4)])/G(1) -det([F(1) F(5) ;G(1) G(5)])/G(1) 0]

I=[-det([G(1) G(2) ;H(1) H(2)])/H(1) -det([G(1) G(3) ;H(1) H(3)])/H(1)...
-det([G(1) G(4) ;H(1) H(4)])/H(1) -det([G(1) G(5) ;H(1) H(5)])/H(1) 0]

g = tf([128] , [1 3 10 24 48 96 128 192 128])
rlocus(g)

%% extra
syms k
clc
A=[1 6+k 0] %s6
B=[5 k*20 0] %s5
C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
0] %s4

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
0] % s3


syms x
expand((x+5)*(x+6)*(x+7))

%%
clc
A=[1 3 2]
B=[-2 -6 -4]

C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
0]

C = diff(B)

C=[-8 -12 0]


D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
0]

E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
0]

F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
0]