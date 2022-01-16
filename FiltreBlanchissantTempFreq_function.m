function [f,x,result,t] = FiltreBlanchissantTempFreq_function(Tb)
fc=5;
f= -1/Tb:0.01:1/Tb-0.01;
x = pi*f./(sin(pi*f*Tb));
% x = 1./(Tb*(sin(pi*f*Tb)));


t=-2*fc:1/100:2*fc-0.001;
% result=imag(ifftshift(ifft(x)));
result=imag(ifftshift(ifft(x)));

%*-*-*-*-*-*-*-*- Affichage *-*-*-*-*-*-*-*-*
% figure;
% subplot(211);plot(f,x,'r','linewidth',2);
% axis([-10 10 -0.5 17 ]);
% xlabel('Frequence (Hz)','fontsize',8);
% ylabel('Amplitude (V)','fontsize',8); 
% title('Filtre blanchissant','fontsize',8);
% grid on
% 
% subplot(212);plot(t,result,'r','linewidth',2);
% % axis([-10 10 -0.5 17 ]);
% xlabel('Temps (Sec)','fontsize',8);
% ylabel('Amplitude (V)','fontsize',8); 
% title('Filtre blanchissant','fontsize',8);
% grid on