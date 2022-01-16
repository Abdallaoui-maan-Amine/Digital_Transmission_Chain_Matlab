clear all;
% [f,x,result,t] = FiltreBlanchissantTempFreq_function(0.1);
% figure;
% subplot(311);plot(t,result)
% [g,t] = CosSurelveTemp_function(0);
% subplot(312);plot(t,g);
% 
% final = result.*g;
% 
% subplot(313);plot(t,abs(final))
% 

% figure;
% [g,t] = CosSurelveTemp_function(0);
% plot(t,g,'r');hold on;
% [g,t] = CosSurelveTemp_function(0.5);
% plot(t,g,'b');hold on;
% [g,t] = CosSurelveTemp_function(1);
% plot(t,g,'g');hold on;
% legend('a=0','a=0.5','a=1')
% title('Filtre en cosinus sureleve');
% xlabel('Temps ms')




%     [f,x,result,t] = FiltreBlanchissantTempFreq_function(0.1); 
%     [f,g] = CosSureleveFreq_function(0.5);
%    figure;
%     subplot(211);
%     blan=x.*g;                        %cosinus sureleve * l'inverse de la mise en forme
%     plot(f,blan);
%     
%     final=imag(ifftshift(ifft(blan)));
%     subplot(212);
%     plot(t,final)


Tb=0.1;
fc=0.1;
t=-1/Tb:0.02:1/Tb-0.01;
sc= sinc(2*pi*fc*t);
invers=1./sc;
figure;
subplot(211);
plot(t,sc);
subplot(212);
plot(t,abs(invers));
axis([-1.4 1.4 -0.2 5])

X=[1 0 1 0 1 1 1 0 0 1]
[nrz,dsp_NRZ,t,f] = NRZ(X);

figure;
subplot(211);plot(t,nrz);
sortie=nrz.*abs(invers);
subplot(212);plot(t,abs(sortie));