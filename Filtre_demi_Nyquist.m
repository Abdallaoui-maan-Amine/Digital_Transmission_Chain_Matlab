function e = Filtre_demi_Nyquist(Ts)
    f= -1/Ts:0.01:1/Ts-0.01;                %génération de vecteur de fréquence
    e=sqrt((Ts/2)*(1-sin((pi/2)*(2*f*Ts-1))));
    
    
    
    %*-*-*-*-*-*-* AFFICHAGE *-*-*-*-*-*-*-*-*-*
    figure;
    plot(f,e,'linewidth',2);grid on
    xlabel('Frequence (Hz)');
    ylabel('Amplitude (V)'); 
    title('Filtre demi Nyquist');