function feat = PIMExtraction(y,Fs,f1,f2)
    % do something
    N = length(y);
    Y = fft(y);

    % Third-order intermodulation frequencies
    fIM3_1 = 2*f1 - f2;
    fIM3_2 = 2*f2 - f1;

    % Corresponding FFT bin indices
    k1 = round(fIM3_1*N/Fs) + 1;
    k2 = round(fIM3_2*N/Fs) + 1;

    % One-sided amplitudes
    A_IM3_1 = 2*abs(Y(k1))/N;
    A_IM3_2 = 2*abs(Y(k2))/N;

    % Return both PIM features
    feat = [A_IM3_1, A_IM3_2];

end