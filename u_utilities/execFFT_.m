% function [Xcut,Freqcut, X, Freq] = execFFT(x,Fs)
function [P1,f] = execFFT_(X,Fs)
    L   = length(X);
    N   = 2^nextpow2(L);

    Y   = fft(X,N);

    P2  = abs(Y/N);
    P1  = P2(1:N/2+1);
    P1(2:end-1) = 2*P1(2:end-1);

    f   = Fs*(0:N/2)/N;
end