close all
clc
clear

%%
N = 60;
n = 0:N;

x1 = 2*cos(pi*n/3) + sin(pi*n/5)
x2 = 2*cos(pi*(n+N)/3) + sin(pi*(n+N)/5)

figure
hold all
stem(n,x1,'filled','k','MarkerSize',5)
stem(n,x2,':diamondr')

grid on
xlabel('n')
ylabel('x[n]')
ylim([-3.5,3.5])

%% Convolução

h = [1 2 3 3 3 2 1 0 zeros(1,10)];
x = [1 0 0 0 0 0 0 0 zeros(1,10)];
N = length(h);
n = 0:N-1

y = conv(h,x);
y_truncado = y(1:N);

figure
subplot(3,1,1)
stem(n,h,'filled','k')
subplot(3,1,2)
stem(n,x,'filled','r')
subplot(3,1,3)
stem(n,y_truncado,'filled','b')
ylabel('y')

%%

z = [1 2 3 4] + [2 1 2 1].*j;

stem(real(z))%parte real
stem(imag(z))%parte imaginaria
stem(abs(z))%modulo
stem(angle(z))%angulo