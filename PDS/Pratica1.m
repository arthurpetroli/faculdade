close all
clc
clear

%%
%1a
N = 60;
n = 0:N;

x1 = 2*cos(pi*n/3) + sin(pi*n/5)

figure
hold all
stem(n,x1,'filled','k','MarkerSize',5)
grid on

%%
%1b)
N = 60;
n = 0:N;
m = 2;
x1 = 2*cos(pi*n/3) + sin(pi*n/5)
n_downsample = m*(0:length(x1))

figure
hold all
stem(n_downsample,x1,'filled','k','MarkerSize',5)
grid on


