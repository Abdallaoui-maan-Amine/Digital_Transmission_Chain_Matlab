clc;
close all;
x=[ 1 0 0 1 1 0 1];                                    % Sequence binaire
Tb=1;                                                  % bit period
disp(' Binary information at Transmitter :');
disp(x);
%*-*- presentation de la sequence binaire sou forme d'un signal continue
bit=[]; 
for n=1:1:length(x)
    if x(n)==1
       se=ones(1,100);
    else x(n)==0
        se=zeros(1,100);
    end
     bit=[bit se];
end
t1=Tb/100:Tb/100:100*length(x)*(Tb/100);
subplot(3,1,1);
plot(t1,bit,'lineWidth',2.5);grid on;
axis([ 0 Tb*length(x) -.5 1.5]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('transmitting information as digital signal');
%XXXXXXXXXXXXXXXXXXXXXXX Binary-ASK modulation XXXXXXXXXXXXXXXXXXXXXXXXXXX%
A1=10;                      % Amplitude of carrier signal for information 1
A2=5;                       % Amplitude of carrier signal for information 0
br=1/Tb;                                                         % bit rate
f=br*10;                                                 % carrier frequency 
t2=Tb/99:Tb/99:Tb;                 
ss=length(t2);
m=[];
for (i=1:1:length(x))
    if (x(i)==1)
        y=A1*cos(2*pi*f*t2);
    else
        y=A2*cos(2*pi*f*t2);
    end
    m=[m y];
end
t3=Tb/99:Tb/99:Tb*length(x);
subplot(3,1,2);
plot(t3,m);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('waveform for binary ASK modulation coresponding binary information');


%XXXXXXXXXXXXXXXXXXXX Binary ASK demodulation XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
mn=[];
for n=ss:ss:length(m)
  t=Tb/99:Tb/99:Tb;
  y=cos(2*pi*f*t);                                        % carrier signal 
  mm=y.*m((n-(ss-1)):n);
  t4=Tb/99:Tb/99:Tb;
  z=trapz(t4,mm)                                              % intregation 
  zz=round((2*z/Tb))                                     
  if(zz>7.5)                                  % logic level = (A1+A2)/2=7.5
    a=1;
  else
    a=0;
  end
  mn=[mn a];
end
disp(' Binary information at Reciver :');
disp(mn);
%XXXXX Representation of binary information as digital signal which achived 
%after ASK demodulation XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
bit=[];
for n=1:length(mn);
    if mn(n)==1;
       se=ones(1,100);
    else mn(n)==0;
       se=zeros(1,100);
    end
     bit=[bit se];
end
t4=Tb/100:Tb/100:100*length(mn)*(Tb/100);
subplot(3,1,3)
plot(t4,bit,'LineWidth',2.5);grid on;
axis([ 0 Tb*length(mn) -.5 1.5]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('recived information as digital signal after binary ASK demodulation');
%>>>>>>>>>>>>>>>>>>>>>>>>>> end of program >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>%
