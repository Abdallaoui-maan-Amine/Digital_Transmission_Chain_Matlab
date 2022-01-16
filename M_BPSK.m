function [m1,demod] = M_BPSK(nrz,t)
fc=1;
Tb=1;
sc=10*sin(2*pi*fc*t);
m1=nrz.*sc;
%     figure;
%     subplot(2,1,1);plot(t,NRZ,'linewidth',2.5);
%     grid on;
%     title('Codeur NRZ');
%     ylim([-1.5 1.5]);
%     subplot(2,1,2);
%     plot(t,moduled,'linewidth',1.5);
%     title('Modulation BPSK');

%*-*-*-*-*-*-* canal de transmission *-*-*-*-*-*-*-*--*-*-*
           

%     %*-*-*-*-*-*-*-*-*-* Demodulation *-*-*-*-*-*-*-*-*-*
t2=Tb/100:Tb/100:Tb;                 
ss=length(t2);
demod=[];
for n=ss:ss:length(m1)
%         t5=Tb/100:Tb/100:Tb;
        sc=sin(2*pi*fc*t2); % carrier siignal 
        mm=sc.*m1((n-(ss-1)):n);
        t4=Tb/100:Tb/100:Tb;
        z=trapz(t4,mm); % intregation 
        zz=round((2*z/Tb));                                     
        if(zz>1/2) % logic level = Ac/2
            A=1;
        else
            A=0;
        end
        demod=[demod A];
end
% disp('Received signal :');
% disp(demod)