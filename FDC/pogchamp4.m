syms s I1 I2 I3 V
A = [(2*s + 1) -(2*s + 1) -1; -(2*s + 1) (9*s + 1) -4*s; -1 -4*s (4*s + 1 +1/s)]
X = [I1 ; I2 ; I3]
B = [V ; 0 ; 0]

X = inv(A)*B
pretty(X)