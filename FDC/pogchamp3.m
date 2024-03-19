syms s I1 I2 V
A = [2+2*s -2;-2 4+2*s]
X = [I1 ; I2]
B = [V ; 0]

X = inv(A)*B
pretty(X)