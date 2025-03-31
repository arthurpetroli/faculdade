import numpy as np
import scipy.signal as signal
import scipy.fftpack as fft
import matplotlib.pyplot as plt
from scipy.io.wavfile import write
import scipy.io.wavfile as wav
from pydub import AudioSegment
import os

# Verificar se ffmpeg está instalado
try:
    from pydub.utils import which
    AudioSegment.converter = which("ffmpeg")
except Exception as e:
    print("Erro: ffmpeg não encontrado. Instale com 'sudo apt install ffmpeg' ou 'brew install ffmpeg'")
    exit()

# Converter o arquivo MP3 para WAV (caso necessário)
audio_path = "piano-chords.mp3"
if not os.path.exists(audio_path):
    print(f"Erro: Arquivo '{audio_path}' não encontrado!")
    exit()

audio_wav_path = "converted_audio.wav"
audio = AudioSegment.from_mp3(audio_path)
audio.export(audio_wav_path, format="wav")

# Carregar o áudio convertido
sr, audio_signal = wav.read(audio_wav_path)

# Se for estéreo, converter para mono
if len(audio_signal.shape) > 1:
    audio_signal = audio_signal[:, 0]

# Calcular a FFT
fft_spectrum = np.abs(fft.fft(audio_signal))[:len(audio_signal)//2]
freqs = np.fft.fftfreq(len(audio_signal), 1/sr)[:len(audio_signal)//2]

# Identificação das frequências mais intensas
peak_indices = signal.find_peaks(fft_spectrum, height=np.max(fft_spectrum)*0.3)[0]
peak_frequencies = freqs[peak_indices]

# Mapeamento de frequências para notas musicais
def frequency_to_note(freq):
    A4_freq = 440.0  # Hz
    note_names = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
    if freq < 20 or freq > 5000:  # Limitar a detecção a um intervalo audível de notas musicais
        return None
    
    n = round(12 * np.log2(freq / A4_freq))
    octave = (n + 9) // 12 + 4  # Calcular a oitava
    note = note_names[n % 12]  # Obter a nota
    return f"{note}{octave}"

# Determinar as notas predominantes
predominant_notes = {freq: frequency_to_note(freq) for freq in peak_frequencies if frequency_to_note(freq)}
print("Notas predominantes detectadas:")
for freq, note in predominant_notes.items():
    print(f"Frequência: {freq:.2f} Hz -> Nota: {note}")

# Criando três filtros FIR
num_taps = 101  # Número de coeficientes do filtro FIR

# 1. Filtro passa-baixa (suaviza o áudio)
lowpass_cutoff = 400  # Hz
lowpass_fir = signal.firwin(num_taps, cutoff=lowpass_cutoff, fs=sr, pass_zero=True)
filtered_lowpass = signal.lfilter(lowpass_fir, 1.0, audio_signal)
write("filtered_lowpass.wav", sr, (filtered_lowpass * 32767).astype(np.int16))

# 2. Filtro passa-alta (realça os agudos)
highpass_cutoff = 500  # Hz
highpass_fir = signal.firwin(num_taps, cutoff=highpass_cutoff, fs=sr, pass_zero=False)
filtered_highpass = signal.lfilter(highpass_fir, 1.0, audio_signal)
write("filtered_highpass.wav", sr, (filtered_highpass * 32767).astype(np.int16))

# 3. Filtro de reverberação (simulação de eco)
reverb_taps = np.zeros(500)
reverb_taps[0] = 1  # Pulso original
reverb_taps[300] = 0.5  # Reflexão retardada
filtered_reverb = signal.lfilter(reverb_taps, 1.0, audio_signal)
write("filtered_reverb.wav", sr, (filtered_reverb * 32767).astype(np.int16))

# Exibir gráfico do espectro de frequência
plt.figure(figsize=(10, 4))
plt.plot(freqs, fft_spectrum)
plt.scatter(peak_frequencies, fft_spectrum[peak_indices], color='red')
plt.xlabel("Frequência (Hz)")
plt.ylabel("Amplitude")
plt.title("Espectro de Frequência do Áudio")
plt.grid()
plt.show()
