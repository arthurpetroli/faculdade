%% Análise de Áudio e Aplicação de Filtros FIR
% Autor: [ARTHUR, DIMITRI, MARCOS E VITOR LEITE]
% Data: [24/01/25]
clc; clear; close all;

%% Carregamento do Áudio
[audio_signal, sr] = audioread('soft-piano-100-bpm-121529.mp3');

%sr - frequencia

%sempre que nao for mono trasfoma em mono pis e mais facil de fazer a fft do audio 
% Converter para mono, se necessário
if size(audio_signal, 2) > 1
    audio_signal = mean(audio_signal, 2);
end

%% Parâmetros da Análise Temporal
window_size = 1024; % Tamanho da janela em amostras
hop_size = 512; % Passo da análise, movimenta 
num_windows = floor(length(audio_signal) / hop_size);
time_vector = (0:num_windows-1) * (hop_size / sr); % Tempo correspondente a cada janela

%% Análise das Notas Predominantes ao Longo do Tempo
A4_freq = 440;  % Hz
note_names = {'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B'};
note_indices = zeros(1, num_windows);
note_times = [];
note_values = [];

for i = 1:num_windows
    start_idx = (i-1) * hop_size + 1;
    end_idx = min(start_idx + window_size - 1, length(audio_signal));
    segment = audio_signal(start_idx:end_idx);%split do audio em 1024 amostras
    
    % FFT do segmento
    segment_fft = abs(fft(segment));
    segment_fft = segment_fft(1:floor(length(segment_fft)/2));
    frequencies = (0:length(segment_fft)-1) * (sr / length(segment));
    
    % Encontrar pico de frequência mais forte
    [pks, peak_idx] = max(segment_fft);
    if isempty(peak_idx) || peak_idx <= 0 || peak_idx > length(frequencies)
        peak_freq = 0;
    else
        peak_freq = frequencies(peak_idx);
    end
    
    % Converter frequência para nota
    if peak_freq > 0
        n = round(12 * log2(peak_freq / A4_freq));
        note_idx = mod(n, length(note_names)) + 1;
        note_idx = max(1, min(note_idx, length(note_names))); % Garantir que está dentro dos limites
        note_indices(i) = note_idx;
    else
        note_indices(i) = 1; % Define um valor padrão se a frequência não for válida
    end
    
    % Exibir valores das frequências e notas no console a cada 0.15 segundos e armazenar para plotagem
    if mod(time_vector(i), 0.15) < (hop_size / sr)
        fprintf('Tempo: %.2f s - Frequência: %.2f Hz - Nota: %s\n', time_vector(i), peak_freq, note_names{note_indices(i)});
        note_times = [note_times, time_vector(i)];
        note_values = [note_values, note_indices(i)];
    end
end

%% Plotagem do Gráfico das Notas Predominantes ao Longo do Tempo
figure;
stairs(time_vector, note_indices, 'Color', [0.5 0.5 1], 'LineWidth', 1.2); % Linhas degrau em azul claro
hold on;
scatter(note_times, note_values, 'o', 'MarkerEdgeColor', [0 0 1]); % Círculos azuis sem preenchimento
yticks(1:length(note_names));
yticklabels(note_names);
ylabel('Nota Predominante');
xlabel('Tempo (s)');
title('Evolução da Nota Predominante ao Longo do Tempo');
grid on;

%% Aplicação de Filtros FIR
num_taps = 201;  % Ajuste da resposta dos filtros

% 1. Filtro Passa-Baixa (Suavização do áudio)
lowpass_cutoff = 600;  % Hz
lowpass_fir = fir1(num_taps-1, lowpass_cutoff / (sr/2), 'low');
filtered_lowpass = filter(lowpass_fir, 1, audio_signal);
audiowrite('filtered_lowpass.wav', filtered_lowpass, sr);

% 2. Filtro Passa-Alta (Realce de agudos)
highpass_cutoff = 800;  % Hz
highpass_fir = fir1(num_taps-1, highpass_cutoff / (sr/2), 'high');
filtered_highpass = filter(highpass_fir, 1, audio_signal);
audiowrite('filtered_highpass.wav', filtered_highpass, sr);

% 3. Filtro de Reverberação (Simulação de Eco)
echo_taps = zeros(1, 1000); % Prolongamento do eco
echo_taps(1) = 1;
echo_taps(400) = 0.9; % Intensificação do eco
echo_taps(800) = 0.6; % Intensificação do eco
filtered_reverb = filter(echo_taps, 1, audio_signal);
audiowrite('filtered_reverb.wav', filtered_reverb, sr);

%% Cálculo da FFT para o áudio completo
L = length(audio_signal);
fft_spectrum = abs(fft(audio_signal));  % Aplicação da FFT
fft_spectrum = fft_spectrum(1:L/2);  % Pegando apenas metade do espectro (simétrico)
frequencies = (0:L/2-1) * (sr/L);  % Criando eixo de frequências

%% Plotagem do Espectro de Frequência
figure;
plot(frequencies, fft_spectrum, 'Color', [0.5 0.5 1]); % Azul claro
xlabel('Frequência (Hz)');
ylabel('Amplitude');
title('Espectro de Frequência do Áudio');
xlim([0 1000]); % Limita o eixo x para 1k Hz
grid on;
