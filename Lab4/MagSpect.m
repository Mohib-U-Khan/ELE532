function [ output_args ] = MagSpect( x )
% MAGSPECT ... Utility function to simplify plotting the magnitude spectrum.
% 
% MAGSPECT(X) plots the double-sided magnitude spectrum of X using 
%       1024-point FFT; the frequency axis labels are generated based 
%       on the sampling frequency Fs = 32 kHz.  Spectral magnitude
%       values are plotted in [dB].

%	AUTHOR  : M. Zeytinoglu 
%             Department of Electrical & Computer Engineering
%             Ryerson University
%             Toronto, Ontario, CANADA
%
%	DATE    : October 2013.
%	VERSION : 1.0

%==========================================================================
% Default values
%==========================================================================
Fs   = 32000;   % default sampling frequency
Nfft = 1024;    % default FFT size

%==========================================================================
% Set up the frequency vector
%==========================================================================
ff = [ -(Nfft/2) : 1 : (Nfft/2)-1 ] * (Fs/Nfft);

%==========================================================================
% Compute the spectrum of x(t) using Nfft-point FFT 
%==========================================================================
Xspect = fft( x, Nfft );

%==========================================================================
% plot the magnitude spectrum 
%==========================================================================
plot( ff, db( abs( fftshift(Xspect) ) ) );

set(gca,'XLim',[-Fs/2 Fs/2]);
    xlabel('Frequency [Hz]'); ...
    ylabel('Magnitude [dB]'); ...
    grid on; 

end

