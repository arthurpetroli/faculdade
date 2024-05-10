syms s

kp = limit(500*(s+2)*(s+5)/((s+8)*(s+10)*(s+12)), s, 0)
kv = s*limit(500*(s+2)*(s+5)/((s+8)*(s+10)*(s+12)), s, 0)
ka = (s^2)*limit(500*(s+2)*(s+5)/((s+8)*(s+10)*(s+12)) , s, 0)
estep = 1 / (1 + kp)
eramp = 1 / kv
eparabol = 1 / ka
