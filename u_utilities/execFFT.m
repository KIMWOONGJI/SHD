% function [Xcut,Freqcut, X, Freq] = execFFT(x,Fs)
function [Xcut,Freqcut] = execFFT(x,Fs)
   N=length(x); %get the number of points
   k=0:N-1;     %create a vector from 0 to N-1
   T=N/Fs;      %get the frequency interval
   Freq=k/T;    %create the frequency range
   X=fft(x)/N*2; % normalize the data
 
   %only want the first half of the FFT, since it is redundant
   cutOff = ceil(N/2); 
 
   %take only the first half of the spectrum
   Xcut = X(1:cutOff);
   Freqcut = Freq(1:cutOff);
end