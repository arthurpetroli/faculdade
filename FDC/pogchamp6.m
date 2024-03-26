syms s X1 X2 F
A = [s^2+s+1 -s-1; -s-1 s^2+s+1]
X = [X1 ; X2]
B = [F ; 0]

X = inv(A)*B
pretty(X)