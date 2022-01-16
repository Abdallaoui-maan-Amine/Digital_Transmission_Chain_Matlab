function [rz,dsp_RZ,t,f] = RZ(X)
N=length(X);
Tb = 1;
rz=[ ];
for i= 1:1:N
    if(X(i)==0)
        Y=zeros(1,100);
    else
        p2=zeros(1,50);
        p1=ones(1,50);
        Y = [p1 p2];
    end
    rz=[rz Y];
end
t=Tb/100:Tb/100:100*N*(Tb/100);

%*-*-*-*-*-*-*-*-* Affichage du codeur RZ *-*-*-*-*-*-*-*-*-*-*
% plot(t,rz,'linewidth',2); 
% xlabel('Temps (ms)');
% ylabel('Amplitude (v)'); 
% title('Codeur RZ');  
% ylim([-.5 1.5]);grid on;



%*-*-*-*-*-*-*-* Calcul du DSP du codeur NRZ *-*-*-*-*-*-*-*-*-
f=-N*1/2*Tb:0.01:N*1/2*Tb-0.01;
dsp_RZ=0.002*fftshift(fft(rz));

% 
% figure;
% subplot(2,1,1);plot(f,abs(dsp_RZ));
% xlabel('Temps (Sec)');
% ylabel('Amplitude (V)'); 
% title('DSP du signal RZ complet');
% 
% 
% 

% V=1;    % l'Amplitude de la mis en forme 
% Tb=0.1; % durée de bit 
% n=1;    % nombre de  bit par symbole 
% Ts=n*Tb; % durée de symbole  
% N=length(X);  
% Y=zeros(1,N);   % Géneration des impulsions 
% for i=1:N     
%     if (X(i)==0)              
%         Y(i)=0;     
%     else
%         Y(i)=1;     
%     end
% end
% % Géneration de la mise en forme  
% t= (0:0.01:Ts); 
% h(1:length(t)/2)= V ; 
% h(length(t)/2+1:length(t))= 0 ;   
% e=kron(Y,h);   % la Densité spectrale de puissance  
% f=-2/Ts:0.001:2/Ts;
% DSP=((Ts*V^2)/4)*power((sinc(pi*f*Ts)/2),2);%on a pas ajouté les raies de Dirac
% figure ;
% plot(e); 
% xlabel('Temps (ms)');
% ylabel('Amplitude (v)'); 
% title('RZ');   
% figure ;
% plot(f,DSP); 
% xlabel('Fréquence (Hz)');
% ylabel('DSP (V²/HZ)'); 
% title('DSP de RZ');