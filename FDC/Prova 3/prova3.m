%%ex1
syms k
clc
A=[1+k (7*k)-15 0] 

B=[(4*k)-1 0 0] 

C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
0]

g = tf([1 8 7] , [1 -2 -15])
rlocus(g)
%%
syms k
expand(1020*(s-13)*(s+26)*(s+33))

%%
A=[1 10 150 0]
B=[3 30 450 0]
C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
-det([A(1) A(4) ;B(1) B(4)])/B(1) 0]

C=[12 60 0 0]

D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
-det([B(1) B(4) ;C(1) C(4)])/C(1) 0]

E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
-det([C(1) C(4) ;D(1) D(4)])/D(1) 0]

F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
-det([D(1) D(4) ;E(1) E(4)])/E(1) 0]

g = tf([450 0] , [1 3 10 30 150 450])
rlocus(g)