syms s X1 X2 F
A = [s^2+3*s+1 -3*s-1; -3*s-1 s^2+4*s+1]
X = [X1 ; X2]
B = [F ; 0]

X = inv(A)*B
pretty(X)