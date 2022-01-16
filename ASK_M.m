function [m1,t,t2]= ASK_M(nrz,N)
Tb=1;
A1=10;
A2=5;
fc=2;
t=Tb/100:Tb/100:N*Tb; 
sc=sin(2*pi*fc*t);
t2=Tb/100:Tb/100:Tb;                 
ss=length(t2);
m1=[];
    for i=1:length(t)
        if (nrz(i)==1)
            y=A1.*sc(1,i);
        else
            y=A2.*sc(1,i);
        end
        m1=[m1 y];
    end
    
    
% m2=[];
% for n=ss:ss:length(moduled)
%   sc=sin(2*pi*fc*t2);                                       % carrier signal 
%   mm=sc.*moduled((n-(ss-1)):n);
%   z=trapz(t4,mm);                                              % intregation 
%   zz=round((2*z/Tb));                                     
%   if(zz>7.5);                                  % logic level = (A1+A2)/2=7.5
%     a=1;
%   else
%     a=0;
%   end
%   mn=[mn a];
% end
