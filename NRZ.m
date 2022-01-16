function [nrz,dsp_NRZ,t,f] = NRZ(X)
N=length(X);
Tb = 1;
nrz=[ ];
for i= 1:1:N
    if(X(i)==0)
        Y=-1*ones(1,100);
    else
        Y=ones(1,100);
    end
    nrz=[nrz Y];
end
t=Tb/100:Tb/100:100*N*(Tb/100);

%*-*-*-*-*-*-*-*-* Affichage du codeur NRZ *-*-*-*-*-*-*-*-*-*-*
% figure;
% subplot(2,1,1);plot(t,nrz);
% title('Codeur NRZ');
% ylim([-1.5 1.5]);
% 




%*-*-*-*-*-*-*-* Calcul du DSP du codeur NRZ *-*-*-*-*-*-*-*-*-
f=-N*1/2*Tb:0.01:N*1/2*Tb-0.01;
dsp_NRZ=0.002*fftshift(fft(nrz));


% figure;
% subplot(2,1,1);plot(t,nrz);
% title('Codeur NRZ');
% ylim([-1.5 1.5]);

% subplot(2,1,1);plot(f,abs(dsp_NRZ));
% xlabel('Temps (Sec)');
% ylabel('Amplitude (V)'); 
% title('DSP du signal NRZ complet');
% f=-5/Ts:0.1:5/Ts; 
% DSP=Ts*power(sinc(f*Ts),2);   % Trace des figures 
% figure ;
% subplot(2,1,1);
% plot(e); 
% xlabel('Temps (ms)');
% ylabel('Amplitude (v)'); 
% title('NRZ');   
% subplot(2,1,2);
% plot(f,DSP); 
% xlabel('Fréquence (Hz)');
% ylabel('DSP (V²/HZ)'); 
% title('DSP de NRZ');  