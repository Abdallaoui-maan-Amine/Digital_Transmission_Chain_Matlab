function [moduled,demod] = M_OOK(nrz,t)
fc=2;
sc=sin(2*pi*fc*t);
moduled=[];
for j=1:100:length(t)
    if(nrz(j)==1)
        p1=sc(1,1:100);
    else
        p1 =zeros(1,100);
    end
    moduled=[moduled p1];
    length(moduled)
end
length(moduled)
demod=0;
        