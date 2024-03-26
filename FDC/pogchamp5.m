syms s I1 I2 I3 V
A = [(s + 1) -s -1; -s (2*s + 1) -1; -1 -1 (s+2)]
X = [I1 ; I2 ; I3]
B = [V ; 0 ; 0]

X = inv(A)*B
pretty(X)