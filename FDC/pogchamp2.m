syms s I1 I2 Ve
A = [2 -1;-1 1+s+1/(2*s)]
X = [I1 ; I2]
B = [Ve ; 0]

X = inv(A)*B
pretty(X)