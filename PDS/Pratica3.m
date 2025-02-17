clear; clc; close all;

%% Carregar o arquivo .mat
load('audio_gravado.mat'); % Substitua se necessário

% Ajustar nome das variáveis
audio_gravado = Y;  
Fs = FS;            

% Eixo de tempo
t = (0:length(audio_gravado)-1) / Fs;

%% Reproduzir o áudio original (opcional)
%sound(audio_gravado, Fs);

%% Projeto do filtro (Butterworth Passa-Baixas de 4ª ordem)
fc = 0.4 * (Fs/2);   % Ajuste de acordo com a análise do espectro
ordem = 4;
[b, a] = butter(ordem, fc/(Fs/2), 'low');

% Aplicar o filtro
audio_filtrado = filtfilt(b, a, audio_gravado);

%% Reproduzir o áudio filtrado (opcional)
%sound(audio_filtrado, Fs);

%% Cálculo do espectro (SEM dividir por N para manter amplitude “bruta”)
N = length(audio_gravado);
X          = fft(audio_gravado);
X_filtrado = fft(audio_filtrado);

% Magnitudes do espectro (metade positiva)
X_mag          = abs(X(1 : N/2+1));          
X_filtrado_mag = abs(X_filtrado(1 : N/2+1)); 
f = linspace(0, Fs/2, N/2+1);  % Eixo de frequência

%% Criação de uma figura com 4 subplots
figure('Name','Comparação Sinal Original x Filtrado','NumberTitle','off');

% 1) Sinal no Tempo – Original
subplot(2,2,1);
plot(t, audio_gravado, 'k', 'LineWidth', 1.0);
xlabel('Tempo (s)');
ylabel('Amplitude');
title('Sinal no Tempo - Original');
grid on;

% 2) Sinal no Tempo – Filtrado (plotando ambos p/ comparação)
subplot(2,2,2);
plot(t, audio_gravado, 'Color', [0.6 0.6 0.6], 'LineWidth', 1.0, 'LineStyle','-');
hold on;
plot(t, audio_filtrado, 'r', 'LineWidth', 1.0);
hold off;
xlabel('Tempo (s)');
ylabel('Amplitude');
title('Sinal no Tempo - Filtrado');
legend('Original','Filtrado','Location','best');
grid on;

% 3) Espectro de Frequência – Original
subplot(2,2,3);
plot(f, X_mag, 'Color', [0.4 0.4 0.4], 'LineWidth', 1.0);
xlabel('Frequência (Hz)');
ylabel('Magnitude');
title('Espectro de Frequência - Original');
grid on;

% 4) Espectro de Frequência – Filtrado (plotando ambos p/ comparação)
subplot(2,2,4);
plot(f, X_mag, 'Color', [0.4 0.4 0.4], 'LineWidth', 1.0, 'LineStyle','--');
hold on;
plot(f, X_filtrado_mag, 'r', 'LineWidth', 1.0);
hold off;
xlabel('Frequência (Hz)');
ylabel('Magnitude');
title('Espectro de Frequência - Filtrado');
legend('Original','Filtrado','Location','best');
grid on;

% (Opcional) Ajustar limites de eixo para evidenciar o pico
% xlim([0 4000]);  
% ylim([0 600]);
