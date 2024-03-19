syms s I1 I2 Ve
A = [1+s -s;-s 2+s]
X = [I1 ; I2]
B = [Ve ; 0]

X = inv(A)*B

pretty(X)