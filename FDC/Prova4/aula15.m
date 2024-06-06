syms s
syms z

g = tf([1] , poly([0 -4 -6]))
rlocus(g)
% valor inicial ts=4/parte real
% tsn = ts/3
% valor novo tsnovo=4/tsn
%polo novo = 3 vezes polo antigo

kv = limit((s)*43.3/(s*(s+7)), s, 0)
eramp=1/kv

(eramp/20) == 1/((45.9*z)/(7*0.01))

kvNew = limit((s)*44.7*(s+0.2) / (s*(s+7)*(s+0.01)), s, 0)
erampNew=1/kvNew

result = eramp/erampNew

zc = rad2deg(angle(-3.6+6.21j)+angle(0.4+6.21j)+angle(2.4+6.21j)) - 180
zcfinal = (6.21/tan(deg2rad(zc))) + 3.6

%%
g = tf([1 6] , poly([-2 -3 -5]))
rlocus(g)

ts=4/2.32
tsn = ts/2
tsnovo=4/tsn
%-4.64+4.64i

zc = rad2deg(-angle(1.36+4.64j)+angle(-2.64+4.64j)+angle(-1.64+4.64j)+angle(0.36+4.64j)) - 180
zcfinal = (4.64/tan(deg2rad(zc))) + 4.64

g2 = tf(poly([-6 -zcfinal]) , [1 10 31 30])
rlocus(g2)
