syms s X1 X2 F
A = [s^2+6*s+9 -3*s-5; -3*s-5 2*s^2+5*s+5]
X = [X1 ; X2]
B = [0 ; F]

X = inv(A)*B
pretty(X)