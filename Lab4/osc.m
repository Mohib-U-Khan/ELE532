function [ output ] = osc( F0, arg2, arg3  )
% OSC .........	A simple osillator routine generating a sinusoidal waveform.
%
%  X = OSC(F0,N) generates N samples of the sinusoidal waveform 
%
%                X = cos(2*pi*F0*t)
%
%            at sampling frequency fs=32 kHz.
%
%  X = OSC(F0,N,Fs) generates N samples of the sinusoid at sampling rate Fs.

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
Fs_Default = 32000; % default sampling frequency
NN_Default = 80000; % default number of samples

%==========================================================================
% Set up parameters based on default and user specified values
%==========================================================================
switch nargin
    
    case 0
        error('You must specify the oscillator frequency and the number of data points.');
        
    case 1
       error('You must specify the number of data points');
    
    case 2
        NN = arg2;
        Fs = Fs_Default;

    case 3
        NN = arg2;
        Fs = arg3;
end

%==========================================================================
% generate the output
%==========================================================================
output = cos( 2*pi*(F0/Fs)*[0:NN-1]' );

end

