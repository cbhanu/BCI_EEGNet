close all; clear all; clc

load 'Subject_B_test.mat' % load data file
 
% % convert to double precision
 Signal=double(Signal);
 Flashing=double(Flashing);
 StimulusCode=double(StimulusCode);
% StimulusType=double(StimulusType);

Filtered_signal=zeros(100,7794,64);
%Filtered_signal=zeros(5340,684,56);

figure;
for char=1:100   % 5340
    for chan=1:64  % 56
        
        x11=Signal(char,:,chan);  %Signals
        disp([char,chan]);

        sampleRate = 200; % Hz
        lowEnd = 0.1; % Hz
        highEnd = 40; % Hz
        filterOrder = 2; 
        [b, a] = butter(filterOrder, [lowEnd highEnd]/(sampleRate/2)); % Generate filter coefficients
        Filtered_signal(char,:,chan) = filtfilt(b, a, x11); % Apply filter to data    


    end
end


 Signal=Filtered_signal;
 Flashing=double(Flashing);
 StimulusCode=double(StimulusCode);
% StimulusType=double(StimulusType);

save Subject_B_test_filtered.mat Signal Flashing StimulusCode % Stimulus Type Target_Char