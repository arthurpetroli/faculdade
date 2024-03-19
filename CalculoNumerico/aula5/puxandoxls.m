H = xlsread("calculo numerico.xlsx",1,"A2:B9")

x = H(:,1);
y = H(:,2);
lm = fitlm(x,y)