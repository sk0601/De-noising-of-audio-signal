clc;
clear all;
close all
[x,Fs] = audioread('voice.wav');  
sound(x,Fs);  
subplot(2,1,1)
plot(x)
title('Original Signal')
y = awgn(x,10,'measured');
filename = 'noisyvoice.wav';  % Saving the file as EchoedVoice.wav
audiowrite(filename, y, Fs)
pause(5)
sound(y,Fs); 
subplot(2,1,2)
plot(y)
title('Noisy Signal');
