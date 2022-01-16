function [manch,dsp_Manchester,t,f] = Manchester(X)
N=length(X);
Tb = 1;
manch=[ ];
for i= 1:1:N
    if(X(i)==0)
        p1=-1*ones(1,50);
        p2=ones(1,50);
        Y=[p1 p2];
    else
        p3=-1*ones(1,50);
        p4=ones(1,50);
        Y = [p4 p3];
    end
    manch=[manch Y];
end
t=Tb/100:Tb/100:100*N*(Tb/100);

%*-*-*-*-*-*-*-*-* Affichage du codeur Manchester *-*-*-*-*-*-*-*-*-*-*
% plot(t,manch,'linewidth',2); 
% xlabel('Temps (ms)');
% ylabel('Amplitude (v)'); 
% title('Codeur Manchester');  
% ylim([-1.5 1.5]);grid on;

%*-*-*-*-*-*-*-* Calcul du DSP du codeur NRZ *-*-*-*-*-*-*-*-*-
f=-N*1/2*Tb:0.01:N*1/2*Tb-0.01;
dsp_Manchester=0.002*fftshift(fft(manch));

% figure;
% subplot(2,1,1);plot(f,abs(dsp_Manchester));
% xlabel('Temps (Sec)');
% ylabel('Amplitude (V)'); 
% title('DSP du signal Manchester complet');

% V=1;    % l'Amplitude de la mis en forme 
% Tb=1; % durée de bit 
% n=1;     % nombre de  bit par symbole 
% Ts=n*Tb; % durée de symbole  
% N=length(X);  
% Y=zeros(1,N);   % Géneration des impulsions 
% for i=1:N     
%     if (X(i)==0)              
%         Y(i)=-1;     
%     else
%         Y(i)=1;     
%     end
% end
% % Géneration de la mise en forme  
% t= (0:0.001:Ts); 
% h(1:length(t)/2)= V ; 
% h(length(t)/2+1:length(t))= -V ;    
% e=kron(Y,h);   % la Densité spectrale de puissance  
% f=-5/Ts:0.1:5/Ts; 
% DSP=Ts*V*V*power(sinc(f*Ts),2).*power(sin((pi*f*Ts)/2),2);
% figure ;
% plot(e); 
% xlabel('Temps (ms)');
% ylabel('Amplitude (v)'); 
% title('Manchester');   
% figure ;
% plot(f,DSP); 
% xlabel('Fréquence (Hz)');
% ylabel('DSP (V²/HZ)'); 
% title('DSP de Manchester');