syms s
syms z

g = tf([0 0 1] , [1 7 0])
rlocus(g)

kv = limit((s)*45.9/(s*(s+7)), s, 0)
eramp=1/kv

(eramp/20) == 1/((45.9*z)/(7*0.01))

g = tf([1 0.2] , poly([0 -7 -0.01]))
rlocus(g)

kvNew = limit((s)*44.7*(s+0.2) / (s*(s+7)*(s+0.01)), s, 0)
erampNew=1/kvNew

result = eramp/erampNew

%%
g = tf([0 0 1] , [1 7 0])
rlocus(g)