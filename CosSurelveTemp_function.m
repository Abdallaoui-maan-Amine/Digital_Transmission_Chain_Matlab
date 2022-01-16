function [g,t] = CosSurelveTemp_function(a)
fc=5;
Ts=1;
t=-fc:0.005:fc-0.001;
s=(sin(pi.*t)/Ts)./((pi.*t)/Ts);
c=(cos(a*pi.*t)/Ts)./(1-((2*a.*t)/Ts).^2);
g=s.*c;


% figure;
% [g,t] = CosSurelveTemp(0);
% plot(t,g,'r');hold on;
% [g,t] = CosSurelveTemp(0.5);
% plot(t,g,'b');hold on;
% [g,t] = CosSurelveTemp(1);
% plot(t,g,'g');hold on;
% legend('a=0','a=0.5','a=1')
% title('Filtre en cosinus sureleve');
% xlabel('Temps ms')