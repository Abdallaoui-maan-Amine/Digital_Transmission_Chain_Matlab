function [m2,t,sortie]= ASK_D(m1)
   
m2=[];
fc=2;
Tb=1;
t=Tb/100:Tb/100:10*Tb;
t2=Tb/100:Tb/100:Tb;
for n=100:100:length(m1)
  sc=sin(2*pi*fc*t2);                                       % carrier signal 
  mm=sc.*m1((n-(100-1)):n);
  z=trapz(t2,mm);                                              % intregation 
  zz=round((2*z/Tb));                                     
  if(zz>7.5)                                  % logic level = (A1+A2)/2=7.5
    a=1;
  else
    a=0;
  end
  m2=[m2 a];
end

N=length(m2);
        sortie=[ ];
        for i= 1:1:N
            if(m2(i)==0)
                Y=zeros(1,100);
            else
                Y=ones(1,100);
            end
            sortie=[sortie Y];
        end
        
