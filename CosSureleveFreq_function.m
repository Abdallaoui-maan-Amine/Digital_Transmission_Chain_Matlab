function [f,g] = CosSureleveFreq_function(a)
%a=coefficient de retomb� 

Ts=0.1;                             %Periode d'un symbole  
f= -1/Ts:0.01:1/Ts-0.01;                %g�n�ration de vecteur de fr�quence 

%cosinus sur�lev� (qui v�rifier le crit�re de nyquist) 
g=zeros(1,length(f)); 
for  i=1:length(f) 
    if (( abs(f(i))>=0 ) && ( abs(f(i))< ((1-a)/(2*Ts))) )
         g(i)=Ts;  
    elseif(( abs(f(i))<= ((1+a)/(2*Ts))) && (abs(f(i))>=((1-a)/(2*Ts)) )) 
            g(i)=(Ts/2)*(1-sin((pi*(2*abs(f(i))*Ts-1)/(2*a))));       
    end
end


%*-*-*-*-*-*-*-*- Affichage *-*-*-*-*-*-*-*-*
% plot(f,10.*g,'linewidth',2);grid on
% ylim([0 1.2]);
% % legend('a = ');
% title('Filtre en cosinus sur�lev�');
% xlabel('fr�quence (kHz)');