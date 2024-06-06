syms s

kp = limit(500*(s+2)*(s+5)/((s+8)*(s+10)*(s+12)), s, 0)
kv = limit((s)*500*(s+2)*(s+5)/((s+8)*(s+10)*(s+12)), s, 0)
ka = limit((s^2)*500*(s+2)*(s+5)/((s+8)*(s+10)*(s+12)) , s, 0)
estep = 1 / (1 + kp)
eramp = 1 / kv
eparabol = 1 / ka


%%
syms s
kp = limit(1000*(s+8)/((s+7)*(s+9)), s, 0)
kv = limit((s)*1000*(s+8)/((s+7)*(s+9)), s, 0)
ka = limit((s^2)*1000*(s+8)/((s+7)*(s+9)) , s, 0)
estep = 1 / (1 + kp)
eramp = 1 / kv
eparabol = 1 / ka

%%
syms s
kp = limit(1000*(s+12)/((s+14)*(s+18)), s, 0)
kv = limit((s)*1000*(s+12)/((s+14)*(s+18)), s, 0)
ka = limit((s^2)*1000*(s+12)/((s+14)*(s+18)) , s, 0)
estep = 1 / (1 + kp)
eramp = 1 / kv
eparabol = 1 / ka

%%
syms s
kp = limit(1000*(s+5)/(s*(s+6)*(s+7)*(s+8)), s, 0)
kv = limit((s)*1000*(s+5)/(s*(s+6)*(s+7)*(s+8)), s, 0)
ka = limit((s^2)*1000*(s+5)/(s*(s+6)*(s+7)*(s+8)) , s, 0)
estep = 1 / (1 + kp)
eramp = 1 / kv
eparabol = 1 / ka
