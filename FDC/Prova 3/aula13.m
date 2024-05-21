s = -3+0j;
G = (s+2)/(s^2+(4*s)+13);
theta = (180/pi)*angle(G)
M = abs(G)
K = 1/M

%funçao subistuindo o s G = (-5+9j)*(-3+9j)/((-7+9j)*(-4+9j)*(-1+9j));x
abs(-3+0j)
rad2deg(angle(-3+0j))
% -3+9j = 9,48//108,43°

g = tf([1],poly([-2 -4 -6]))
rlocus(g)

%  bolad  wd
% 4,6+ 3,45j
ts = 4/2.03
tp = pi/2.77

g = tf([1],poly([-2 -4 -6]))
rlocus(g)
% -2.03+ 2.77j em 10%
%diping ratio 0,59 e
%gain 45,6
%frequency = wn 3,43
ts = 4/2.03
tp = pi/2.77
tr = 1.854/3.43
kp = 45.6/((0+2)*(0+4)*(0+6))
estep = 1 / (1 + kp)
% 6 * -2,03 maior que -7,94 entao nao e aproximaçao nao e valida


