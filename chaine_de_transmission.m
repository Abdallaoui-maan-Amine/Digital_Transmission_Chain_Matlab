function varargout = chaine_de_transmission(varargin)
%CHAINE_DE_TRANSMISSION 
%Auteur : ABDALLAOUI MAAN Amine
%amine_abdellaouimaane@um5.ac.ma
%Master Informatique et Telecomunication
%Last Modified by GUIDE v2.5 30-Jui-2020 11:30:38
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @chaine_de_transmission_OpeningFcn, ...
                   'gui_OutputFcn',  @chaine_de_transmission_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end
if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

% End initialization code - DO NOT EDIT
% --- Executes just before chaine_de_transmission is made visible.
function chaine_de_transmission_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to chaine_de_transmission (see VARARGIN)
    
% Choose default command line output for chaine_de_transmission
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes chaine_de_transmission wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.

function varargout = chaine_de_transmission_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% f = msgbox('Ce projet consiste à mettre en œuvre une étude d’une chaine de transmission numérique qui va contenir les blocs suivants ','Success');
% get(f,'position')
% set(f,'position',[120.7500,480.1667,125.0000,52.2500])
% figure('Name',' La chaine de transmission numérique ');
% imshow('chaine.jpg');
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in random.
function random_Callback(hObject, eventdata, handles)
% hObject    handle to random (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% a=round(rand(1,10)); %Generer un signal aleatoire de 10bits
a=randi([0 1], 1, 10);  %Generer un signal aleatoire de 10bits
ran=[a(1),a(2),a(3),a(4),a(5),a(6),a(7),a(8),a(9),a(10)];
set(handles.bit1,'String',ran(1));
set(handles.bit2,'String',ran(2));
set(handles.bit3,'String',ran(3));
set(handles.bit4,'String',ran(4));
set(handles.bit5,'String',ran(5));
set(handles.bit6,'String',ran(6));
set(handles.bit7,'String',ran(7));
set(handles.bit8,'String',ran(8));
set(handles.bit9,'String',ran(9));
set(handles.bit10,'String',ran(10));
%*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
handles.bits=ran;
h=handles.bits;
bit=[];
for n=1:2:length(h)-1
    if h(n)==0 && h(n+1)==1
        se=[zeros(1,50) ones(1,50)];
    elseif h(n)==0 && h(n+1)==0
        se=[zeros(1,50) zeros(1,50)];
    elseif h(n)==1 && h(n+1)==0
        se=[ones(1,50) zeros(1,50)];
    elseif h(n)==1 && h(n+1)==1
        se=[ones(1,50) ones(1,50)];
    end
   
    bit=[bit se];
end
guidata(hObject, handles);



% --- Executes on button press in Sauver.
function Sauver_Callback(hObject, eventdata, handles)
% hObject    handle to Sauver (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.bit1,'String'));
b=str2double(get(handles.bit2,'String'));
c=str2double(get(handles.bit3,'String'));
d=str2double(get(handles.bit4,'String'));
e=str2double(get(handles.bit5,'String'));
f=str2double(get(handles.bit6,'String'));
g=str2double(get(handles.bit7,'String'));
h=str2double(get(handles.bit8,'String'));
i0=str2double(get(handles.bit9,'String'));
j0=str2double(get(handles.bit10,'String'));
handles.bits=[a,b,c,d,e,f,g,h,i0,j0];
guidata(hObject, handles);
%*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-


% --- Executes during object creation, after setting all properties.
function select_mod_CreateFcn(hObject, eventdata, handles)
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bit1_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of bit1 as text
%        str2double(get(hObject,'String')) returns contents of bit1 as a double


% --- Executes during object creation, after setting all properties.
function bit1_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bit2_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of bit2 as text
%        str2double(get(hObject,'String')) returns contents of bit2 as a double


% --- Executes during object creation, after setting all properties.
function bit2_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bit3_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of bit3 as text
%        str2double(get(hObject,'String')) returns contents of bit3 as a double


% --- Executes during object creation, after setting all properties.
function bit3_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bit4_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of bit4 as text
%        str2double(get(hObject,'String')) returns contents of bit4 as a double


% --- Executes during object creation, after setting all properties.
function bit4_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bit5_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function bit5_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bit6_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of bit6 as text
%        str2double(get(hObject,'String')) returns contents of bit6 as a double


% --- Executes during object creation, after setting all properties.
function bit6_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bit7_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of bit7 as text
%        str2double(get(hObject,'String')) returns contents of bit7 as a double


% --- Executes during object creation, after setting all properties.
function bit7_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bit8_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of bit8 as text
%        str2double(get(hObject,'String')) returns contents of bit8 as a double


% --- Executes during object creation, after setting all properties.
function bit8_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bit9_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of bit9 as text
%        str2double(get(hObject,'String')) returns contents of bit9 as a double


% --- Executes during object creation, after setting all properties.
function bit9_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bit10_Callback(hObject, eventdata, handles)
% Hints: get(hObject,'String') returns contents of bit10 as text
%        str2double(get(hObject,'String')) returns contents of bit10 as a double


% --- Executes during object creation, after setting all properties.
function bit10_CreateFcn(hObject, eventdata, handles)
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in Quitter.
function Quitter_Callback(hObject, eventdata, handles)
close(chaine_de_transmission);
% hObject    handle to Quitter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in tracer_impultion.
function tracer_impultion_Callback(hObject, eventdata, handles)
X=handles.bits;
N=length(X);  
handles.N=N;
guidata(hObject, handles);
Y=zeros(1,N);   % Géneration des impulsions 
for i=1:N     
    if (X(i)==0)             
       Y(i)=0;     
    else
        Y(i)=1;     
    end
end
axes(handles.axes4)
plot(Y,'*'); 
xlabel('Temps (Sec)','fontsize',8);
ylabel('Amplitude (V)','fontsize',8); 
title('Les impulsion de Dirac','fontsize',8); grid on




% --- Executes on button press in Codeur.
function Codeur_Callback(hObject, eventdata, handles)     
handles.a=0;   
guidata(hObject, handles);


% --- Executes on button press in DSP_codeur.
function DSP_codeur_Callback(hObject, eventdata, handles)
handles.a=1;
guidata(hObject, handles);





% --- Executes on button press in NRZ.
function NRZ_Callback(hObject, eventdata, handles)
% hObject    handle to NRZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=handles.bits;
[nrz,dsp_NRZ,t,f]=NRZ(X);
handles.nrz=nrz;
handles.t=t;
guidata(hObject, handles);
a=handles.a;
if (a==0)
    axes(handles.axes5);
    plot(t,nrz,'linewidth',2); 
    xlabel('Temps (ms)','fontsize',8);
    ylabel('Amplitude (v)','fontsize',8); 
    title('Codeur NRZ','fontsize',8);  
    ylim([-1.5 1.5]);grid on;
elseif (a==1)
    axes(handles.axes5);
    plot(f,abs(dsp_NRZ));
    xlabel('Fréquence (Hz)','fontsize',8);
    ylabel('DSP (V²/HZ)','fontsize',8);
    title('DSP du signal NRZ complet','fontsize',8); grid on;
end



% --- Executes on button press in RZ.
function RZ_Callback(hObject, eventdata, handles)
% hObject    handle to RZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=handles.bits;
[rz,dsp_RZ,t,f] = RZ(X);
a=handles.a;
if (a==0)
    axes(handles.axes5);
    plot(t,rz,'linewidth',2); 
    xlabel('Temps (ms)','fontsize',8);
    ylabel('Amplitude (v)','fontsize',8); 
    title('Codeur RZ','fontsize',8);  
    ylim([-.25 1.25]);grid on;
    
elseif (a==1)
    axes(handles.axes5);
    plot(f,abs(dsp_RZ));
    xlabel('Fréquence (Hz)','fontsize',8);
    ylabel('DSP (V²/HZ)','fontsize',8);
    title('DSP du signal RZ complet','fontsize',8); grid on;  
end


% --- Executes on button press in Manchester.
function Manchester_Callback(hObject, eventdata, handles)
% hObject    handle to Manchester (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=handles.bits;
[manch,dsp_Manchester,t,f] = Manchester(X);
a=handles.a;
if (a==0)
    axes(handles.axes5)
    plot(t,manch,'linewidth',2);
    xlabel('Temps (ms)','fontsize',8);
    ylabel('Amplitude (v)','fontsize',8); 
    title('Codeur Manchester','fontsize',8);
    ylim([-1.5 1.5]);grid on;
elseif (a==1) 
    axes(handles.axes5)
    plot(f,abs(dsp_Manchester)); 
    xlabel('Fréquence (Hz)','fontsize',8);
    ylabel('DSP (V²/HZ)','fontsize',8); 
    title('DSP du signal Manchester complet','fontsize',8); grid on;  
end


function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Temps.
function Temps_Callback(hObject, eventdata, handles)
% hObject    handle to Temps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.b=0;   
guidata(hObject, handles);

% --- Executes on button press in Freq.
function Freq_Callback(hObject, eventdata, handles)
% hObject    handle to Freq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.b=1;   
guidata(hObject, handles);


function Filtre_blanchissant_Callback(hObject, eventdata, handles)
% hObject    handle to Filtre_banchissant (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a = str2double(get(handles.edit11,'string')); %coefficient de retombé 
b=handles.b;
Tb=0.1;
if (b==0)
    f = errordlg('Désagrément... hors capacité ! ! On a trouvé des difficultés en réalisant le filtre blanchissant dans le domaine temporel. Merci pour votre compréhension ','Error ...!!!');
    uiwait(f);
    
    [f,x,result,t] = FiltreBlanchissantTempFreq_function(Tb); 
    [f,g] = CosSureleveFreq_function(a);
    blan=x.*g;                        %cosinus sureleve * l'inverse de la mise en forme
    final=imag(ifftshift(ifft(blan)));
    axes(handles.axes7);
    cla reset;
    plot(t,final,'r')    %filtre blanchissant en domaine temporel
    zoom on
    xlabel('Temps (ms)','fontsize',8);
    
elseif (b==1)
%     [f,x,result,t] = FiltreBlanchissantTempFreq_function(Tb);
    [f,x,result,t] = FiltreBlanchissantTempFreq_function(Tb); 
    [f,g] = CosSureleveFreq_function(a);
    axes(handles.axes7);
    cla reset;
    blan=x.*g;                        %cosinus sureleve * l'inverse de la mise en forme
    handles.blan=blan;
    plot(f,blan,'r','linewidth',2)    %Filtre blanchissant en domaine frequentiel
%     stem(f,blan,'r')
    xlabel('Frequence (Hz)','fontsize',8);
%     axis([-10 10 -0.5 17 ]);
    axis([-10 10 -0.1 1.5 ]);
    guidata(hObject, handles);
    
end
ylabel('Amplitude (V)','fontsize',8); 
title('Filtre blanchissant','fontsize',8);
grid on





function filtre_demi_Nyquist_Callback(hObject, eventdata, handles)
% hObject    handle to filtre_demi_Nyquist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b=handles.b;
if (b==0)
    f = errordlg('Désagrément... hors capacité ! ! On a trouvé des difficultés en réalisant le filtre demi Nyquist dans le domaine temporel. Merci pour votre compréhension ','Error ...!!!');
    uiwait(f);
    axes(handles.axes7);
    cla reset;
elseif (b==1)
    Ts=0.1;
    f= -1/Ts:0.01:1/Ts-0.01;                %génération de vecteur de fréquence
    e=sqrt((Ts/2)*(1-sin((pi/2)*(2*f*Ts-1))));
    handles.e=e;
    axes(handles.axes7);
    cla reset;
    plot(f,e,'b','linewidth',2)             %filtre demi Nyquist
    xlabel('Frequence (Hz)','fontsize',8);
    guidata(hObject, handles);

    
end
ylabel('Amplitude (V)','fontsize',8); 
title('Filtre demi Nyquist','fontsize',8);
grid on





function Filtre_emission_Callback(hObject, eventdata, handles)
% hObject    handle to Filtre_emission (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b=handles.b;
if (b==0)
    f = errordlg('Désagrément... hors capacité ! ! On a trouvé des difficultés en réalisant le filtre d emission dans le domaine temporel. Merci pour votre compréhension ','Error ...!!!');
    uiwait(f);
    axes(handles.axes7);
    cla reset;
elseif (b==1)
    blan=handles.blan;
    e=handles.e;
    emission=blan.*e;
    handles.emission=emission;
    f= -10:0.01:10-0.01;
    handles.f=f;
    axes(handles.axes7);
    cla reset;
    plot(f,emission,'g','linewidth',2)    %filtre de Nyquist
    xlabel('Frequence (Hz)','fontsize',8);
    ylim([-0.05 0.4])
    guidata(hObject, handles);
    
end
ylabel('Amplitude (V)','fontsize',8); 
title("Filtre d'emission",'fontsize',8);
grid on





% --- Executes on button press in Grid_on.
function Grid_on_Callback(hObject, eventdata, handles)
% hObject    handle to Grid_on (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
e=handles.e;
blan=handles.blan;
emission=handles.emission;
f=handles.f;
axes(handles.axes7);
cla reset;
plot(f,blan,'r','linewidth',1.5)                %filtre blanchissant 
hold on;
plot(f,e,'g','linewidth',1.5)                   %filtre demi Nyquist
hold on
plot(f,emission,'b','linewidth',1.5)            %Filtre d'emission
hold on
xlabel('Frequence (Hz)','fontsize',8);
ylabel('Amplitude (V)','fontsize',8); 
title("Filtre d'emission",'fontsize',8);grid on
lgd=legend('Filtre blanchissant','Filtre de Nyquist',"Filtre d'emission");
lgd.FontSize = 8;
set(lgd,'position',[0.778,0.4990,0.2217,0.0830])



%*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
function select_mod_Callback(hObject, eventdata, handles)
% hObject    handle to select_mod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: contents = get(hObject,'String') returns select_mod contents as cell array
%        contents{get(hObject,'Value')} returns selected item from select_mod
%*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
a=str2double(get(handles.bit1,'String'));
b=str2double(get(handles.bit2,'String'));
c=str2double(get(handles.bit3,'String'));
d=str2double(get(handles.bit4,'String'));
e=str2double(get(handles.bit5,'String'));
f=str2double(get(handles.bit6,'String'));
g=str2double(get(handles.bit7,'String'));
h=str2double(get(handles.bit8,'String'));
i0=str2double(get(handles.bit9,'String'));
j0=str2double(get(handles.bit10,'String'));
if (a~=0 && a~=1)
    co=questdlg('The value must be binary','ERROR','1','0','1');
    if strcmp(co,'1')
        set(handles.bit1,'String','1');a=1;
    else
        set(handles.bit1,'String','0');a=0;
    end
elseif (b~=0 && b~=1)
   co=questdlg('The value must be binary','ERROR','1','0','1');
    if strcmp(co,'1')
        set(handles.bit2,'String','1');b=1;
    else
        set(handles.bit2,'String','0');b=0;
    end
   
elseif (c~=0 && c~=1)
   co=questdlg('The value must be binary','ERROR','1','0','1');
    if strcmp(co,'1')
        set(handles.bit3,'String','1');c=1;
    else
        set(handles.bit3,'String','0');c=0;
    end
   
elseif (d~=0 && d~=1)
   co=questdlg('The value must be binary','ERROR','1','0','1');
    if strcmp(co,'1')
        set(handles.bit4,'String','1');d=1;
    else
        set(handles.bit4,'String','0');d=0;
    end
   
elseif (e~=0 && e~=1)
   co=questdlg('The value must be binary','ERROR','1','0','1');
    if strcmp(co,'1')
        set(handles.bit5,'String','1');e=1;
    else
        set(handles.bit5,'String','0');e=0;
    end
   
elseif (f~=0 && f~=1)
   co=questdlg('The value must be binary','ERROR','1','0','1');
    if strcmp(co,'1')
        set(handles.bit6,'String','1');f=1;
    else
        set(handles.bit6,'String','0');f=0;
    end
   
elseif (g~=0 && g~=1)
   co=questdlg('The value must be binary','ERROR','1','0','1');
    if strcmp(co,'1')
        set(handles.bit7,'String','1');g=1;
    else
        set(handles.bit7,'String','0');g=0;
    end
   
elseif (h~=0 && h~=1)
   co=questdlg('The value must be binary','ERROR','1','0','1');
    if strcmp(co,'1')
        set(handles.bit8,'String','1');h=1;
    else
        set(handles.bit8,'String','0');h=0;
    end
   
elseif (i0~=0 && i0~=1)
  co=questdlg('The value must be binary','ERROR','1','0','1');
    if strcmp(co,'1')
        set(handles.bit9,'String','1');i0=1;
    else
        set(handles.bit9,'String','0');i0=0;
    end
   
elseif (j0~=0 && j0~=1)
   co=questdlg('The value must be binary','ERROR','1','0','1');
    if strcmp(co,'1')
        set(handles.bit10,'String','1');j0=1;
    else
        set(handles.bit10,'String','0');j0=0;
    end
   
end
handles.bits=[a,b,c,d,e,f,g,h,i0,j0];

%######################################
handles.mod=get(hObject,'Value');
mod=handles.mod;
switch mod
    case 1
        co=questdlg('Merci de choisir un type valable de modulation','ERROR');
        if strcmp(co,'Yes')
        
        elseif strcmp(co,'No')
            f = errordlg('Error ...!! ','Error ...!!!');
            uiwait(f);
            close('chaine_de_transmission')
        end
       
%-*-*-*-*-*-*-*-*-*-Modulation ASK*-*-*-*-*-*-*-*-*-*-*
    case 2

        N=handles.N;
        nrz=handles.nrz;
        [m1,t,t2]= ASK_M(nrz,N);
        handles.m1=m1;
        handles.dim=length(m1);
        axes(handles.axes3);
        plot(t,m1,'linewidth',1.5);grid on
        xlabel('Temps(Sec)','fontsize',8);
        ylabel('Amplitude(V)','fontsize',8);
        title('ASK modulation','fontsize',8);
        guidata(hObject, handles);
       
    
    

%-*-*-*-*-*-*-*-*-*-Modulation OOK*-*-*-*-*-*-*-*-*-
    case 3
        Tb=1;
        nrz=handles.nrz;
        handles.Tb=Tb;
        N=handles.N;
        t=Tb/100:Tb/100:N*Tb;
        A=10;
        fc=2;
        sc=sin(2*pi*fc*t);
        t2=Tb/100:Tb/100:Tb;                 
        ss=length(t2);
        m1=[];
        for i=1:length(t)
            if (nrz(i)==1)
                y=A.*sc(1,i);
            else
                y=0.*sc(1,i);
            end
            m1=[m1 y];
        end
        handles.m1=m1;
        handles.ss=ss;
        handles.sc=sc;
        handles.dim=length(m1);
        axes(handles.axes3);
        plot(t,m1,'linewidth',1.5);grid on
        xlabel('Temps(Sec)','fontsize',8);
        ylabel('Amplitude(V)','fontsize',8);
        title('OOK modulation','fontsize',8);
        guidata(hObject, handles);
        
        
%*-*-*-*-*-*-*Modulation BPSK  -*-*-*-*-*-*-
    case 4
        nrz=handles.nrz;
        t=handles.t;
        [m1,demod] = M_BPSK(nrz,t);
        handles.m1=m1;
        guidata(hObject, handles);
        axes(handles.axes3);
        plot(t,m1,'linewidth',1.5);grid on
        xlabel('Temps(Sec)','fontsize',8);
        ylabel('Amplitude(V)','fontsize',8);
        title('Modulation ASK','fontsize',8);
%         set(handles.edit12,'String',"["+demod(1)+" "+demod(2)+" "+demod(3)+" "+demod(4)+" "+demod(5)+" "+demod(6)+" "+demod(7)+" "+demod(8)+" "+demod(9)+" "+demod(10)+"]");

%*-*-*-*-*-*-Modulation QPSK*-*-*-*-*
    case 5
        axes(handles.axes3)
        hold off;
        g=handles.bits;
        t=0:2*pi/99:2*pi;
        cp=[];sp=[];
        mod=[];mod1=[];
        for n=1:2:9
            if g(n)==0 && g(n+1)==1
                die=sqrt(2)/2*ones(1,100);
                die1=-sqrt(2)/2*ones(1,100);
            elseif g(n)==0 && g(n+1)==0
                die=-sqrt(2)/2*ones(1,100);
                die1=-sqrt(2)/2*ones(1,100);
            elseif g(n)==1 && g(n+1)==0
                die=-sqrt(2)/2*ones(1,100);
                die1=sqrt(2)/2*ones(1,100);
            elseif g(n)==1 && g(n+1)==1
                die=sqrt(2)/2*ones(1,100);
                die1=sqrt(2)/2*ones(1,100);
            end
            c=10.*cos(t);
            s=10.*sin(t);
            cp=[cp die];    %Amplitude cosino
            sp=[sp die1];   %Amplitude sino
            mod=[mod c];    %cosino carrier (Q)
            mod1=[mod1 s];  %sino carrier   (I)
        end
        m1=cp.*mod+sp.*mod1;
        handles.m1=m1;
        guidata(hObject, handles);
        plot(m1,'LineWidth',1.5);grid on;
        title('QPSK modulation','fontsize',8)
        axis([0 500 -10.5 10.5]); 
%*-*-*-*-*-*-*END QPSK-*-*-*-*-*-*-
% *-*-*-*-*-*Modulation 8psk*-*-*-*-*-*-*-
    case    6
        axes(handles.axes3)
        hold off;
        g=[handles.bits 0 0];
        t=0:2*pi/149:2*pi;
        cp=[];sp=[];
        mod=[];mod1=[];bit=[];
for n=1:3:length(g)
    if g(n)==0 && g(n+1)==1 && g(n+2)==1
        die=cos(pi/8)*ones(1,150);
        die1=sin(pi/8)*ones(1,150);
        se=[zeros(1,50) ones(1,50) ones(1,50)];
        
    elseif g(n)==0 && g(n+1)==1 && g(n+2)==0
        die=cos(3*pi/8)*ones(1,150);
        die1=sin(3*pi/8)*ones(1,150);
        se=[zeros(1,50) ones(1,50) zeros(1,50)];
        
    elseif g(n)==0 && g(n+1)==0  && g(n+2)==0
        die=cos(5*pi/8)*ones(1,150);
        die1=sin(5*pi/8)*ones(1,150);
        se=[zeros(1,50) zeros(1,50) zeros(1,50)];
        
    elseif g(n)==0 && g(n+1)==0  && g(n+2)==1
        die=cos(7*pi/8)*ones(1,150);
        die1=sin(7*pi/8)*ones(1,150);
        se=[zeros(1,50) zeros(1,50) ones(1,50)];
        
    elseif g(n)==1 && g(n+1)==0  && g(n+2)==1
        die=cos(-7*pi/8)*ones(1,150);
        die1=sin(-7*pi/8)*ones(1,150);
        se=[ones(1,50) zeros(1,50) ones(1,50)];
        
    elseif g(n)==1 && g(n+1)==0  && g(n+2)==0
        die=cos(-5*pi/8)*ones(1,150);
        die1=sin(-5*pi/8)*ones(1,150);
        se=[ones(1,50) zeros(1,50) zeros(1,50)];
        
    elseif g(n)==1 && g(n+1)==1  && g(n+2)==0
        die=cos(-3*pi/8)*ones(1,150);
        die1=sin(-3*pi/8)*ones(1,150);
        se=[ones(1,50) ones(1,50) zeros(1,50)];
        
    elseif g(n)==1 && g(n+1)==1  && g(n+2)==1
        die=cos(-pi/8)*ones(1,150);
        die1=sin(-pi/8)*ones(1,150);
        se=[ones(1,50) ones(1,50) ones(1,50)];
        
    end
    c=10.*cos(t);
    s=10.*sin(t);
    cp=[cp die];    %Amplitude cosino
    sp=[sp -die1];   %Amplitude sino
    mod=[mod c];    %cosino carrier (Q)
    mod1=[mod1 s];  %sino carrier   (I)
end
m1=cp.*mod+sp.*mod1;
handles.m1=m1;
guidata(hObject, handles);
plot(m1,'LineWidth',1.5);grid on;
title('8PSK modulation','fontsize',8)
% axis([0 500 -1.5 1.5]); 
axis([0 600 -10.5 10.5]); 
end %end final


%*-*-*-*-*-*-*-*-*-*-* Canal de transmission *-*-*-*-*-*-*-*-*-*-*-*

 function Generer_bruit_Callback(hObject, eventdata, handles)
% % hObject    handle to Generer_bruit (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)

%*-*-*-*- Passage dans un canal de transmission pour ASK
m1=handles.m1;
dim=length(m1);
axes(handles.axes8);
bruit=randn(1,dim);
plot(bruit);grid on
handles.bruit=bruit;
guidata(hObject, handles);
title('Bruit','fontsize',8);grid on
xlabel('Temps (Sec)','fontsize',8);
ylabel('Amplitude (V)','fontsize',8);



function Envoyer_signal_Module_Callback(hObject, eventdata, handles)
% hObject    handle to Envoyer_signal_Module (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bruit=handles.bruit;
m1=handles.m1;
m1 = m1+(7.5.*bruit);
axes(handles.axes6);
plot(m1);grid on
handles.m1=m1;
guidata(hObject, handles);
title('Signal bruite','fontsize',8);
xlabel('Temps (Sec)','fontsize',8);
ylabel('Amplitude (V)','fontsize',8);





%*-*-*-*-*-*-*-*-*-*-*-*-* Demodulation *-*-*-*-*-*-*-*-*-*-*-*-*-*-
%*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*--
function select_demod_Callback(hObject, eventdata, handles)

%*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
handles.demodulo=get(hObject,'Value');
demodulo=handles.demodulo;
switch demodulo
    case 1

        co=questdlg('Merci de choisir un type valable de demodulation','ERROR');
        if strcmp(co,'Yes')
        
        elseif strcmp(co,'No')
            f = errordlg('Error...!!!','Error ...!!!');
            close('chaine_de_transmission')
        end
    
%-*-*-*-*-*-*-*-*-*- Demodulation ASK*-*-*-*-*-*-*-*-*-*-*
    case 2
    
        m1=handles.m1;
        [m2,t,sortie]= ASK_D(m1);
        %set(handles.edit12,'String',"["+m2(1)+" "+m2(2)+" "+m2(3)+" "+m2(4)+" "+m2(5)+" "+m2(6)+" "+m2(7)+" "+m2(8)+" "+m2(9)+" "+m2(10)+"]");
        axes(handles.axes9);
        plot(t,sortie,'linewidth',2.5);grid on
        axis([0 10 -.5 1.5]);
        xlabel('Temps (Sec)','fontsize',8);
        ylabel('Amplitude (V)','fontsize',8); 
        title('Le signal recu apres la chaine de transmission','fontsize',8); 
        demod=m2;
        set(handles.edit14,'String',demod(1));
        set(handles.edit15,'String',demod(2));
        set(handles.edit16,'String',demod(3));
        set(handles.edit17,'String',demod(4));
        set(handles.edit18,'String',demod(5));
        set(handles.edit19,'String',demod(6));
        set(handles.edit20,'String',demod(7));
        set(handles.edit21,'String',demod(8));
        set(handles.edit22,'String',demod(9));
        set(handles.edit23,'String',demod(10));

    

%-*-*-*-*-*-*-*-*-*- Demodulation OOK*-*-*-*-*-*-*-*-*-
    case 3
        Tb=1;
        m1=handles.m1;
        ss=handles.ss;
        m2=[];
        fc=2;
        for n=ss:ss:length(m1)
            t=Tb/100:Tb/100:Tb;
            sc=sin(2*pi*fc*t);
            mm=sc.*m1((n-(ss-1)):n);
            t4=Tb/100:Tb/100:Tb;
            z=trapz(t4,mm);                      % intregation 
            zz=round((2*z/Tb));                                     
            if(zz>7.5)                           % le seuil de decision
                a=1;
            else
                a=0;
            end
            m2=[m2 a];
        end
        %set(handles.edit12,'String',"["+m2(1)+" "+m2(2)+" "+m2(3)+" "+m2(4)+" "+m2(5)+" "+m2(6)+" "+m2(7)+" "+m2(8)+" "+m2(9)+" "+m2(10)+"]");
%         disp(' Binary information at Reciver using OOK modulation :');
%         disp(mn);
        demod= m2;
        set(handles.edit14,'String',demod(1));
        set(handles.edit15,'String',demod(2));
        set(handles.edit16,'String',demod(3));
        set(handles.edit17,'String',demod(4));
        set(handles.edit18,'String',demod(5));
        set(handles.edit19,'String',demod(6));
        set(handles.edit20,'String',demod(7));
        set(handles.edit21,'String',demod(8));
        set(handles.edit22,'String',demod(9));
        set(handles.edit23,'String',demod(10));
        
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
        t=Tb/100:Tb/100:100*N*(Tb/100);
        axes(handles.axes9);
        plot(t,sortie,'linewidth',2.5);grid on
        axis([0 10 -.5 1.5]);
        xlabel('Temps (Sec)','fontsize',8);
        ylabel('Amplitude (V)','fontsize',8); 
        title('Le signal recu apres la chaine de transmission','fontsize',8); 
       
        
        
%*-*-*-*-*-*-*-*-*-*-*-*-*-* Demodulation BPSK  *-*-*-*-*-*-*-*-*-*-*-*-
    case 4
        X=handles.bits;
        [nrz,dsp_NRZ,t,f]=NRZ(X);
        [moduled,demod] = M_BPSK(nrz,t);
        %set(handles.edit12,'String',"["+demod(1)+" "+demod(2)+" "+demod(3)+" "+demod(4)+" "+demod(5)+" "+demod(6)+" "+demod(7)+" "+demod(8)+" "+demod(9)+" "+demod(10)+"]");
        
        set(handles.edit14,'String',demod(1));
        set(handles.edit15,'String',demod(2));
        set(handles.edit16,'String',demod(3));
        set(handles.edit17,'String',demod(4));
        set(handles.edit18,'String',demod(5));
        set(handles.edit19,'String',demod(6));
        set(handles.edit20,'String',demod(7));
        set(handles.edit21,'String',demod(8));
        set(handles.edit22,'String',demod(9));
        set(handles.edit23,'String',demod(10));
        
        N=length(demod);
        sortie=[ ];
        for i= 1:1:N
            if(demod(i)==0)
                Y=zeros(1,100);
            else
                Y=ones(1,100);
            end
            sortie=[sortie Y];
        end
        axes(handles.axes9);
        plot(t,sortie,'linewidth',2.5);grid on
        axis([0 10 -.5 1.5]);
        xlabel('Temps (Sec)','fontsize',8);
        ylabel('Amplitude (V)','fontsize',8); 
        title('Le signal recu apres la chaine de transmission','fontsize',8); 
        
end



% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)


% --------------------------------------------------------------------
function Sup_Axes_Callback(hObject, eventdata, handles)


function edit12_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function select_demod_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in select_mod.
function popupmenu2_Callback(hObject, eventdata, handles)
function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
function edit13_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Consulter_Fonctions_Callback(hObject, eventdata, handles)
    


% --------------------------------------------------------------------
function Fichier_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function Contacter_nous_Callback(hObject, eventdata, handles)
    logo=imread('Contact.png');
    f = msgbox({'- Gmail : AABDELLAOUI322@GMAIL.COM'; ...
                '- Compte academique : AMINE_ABDELLAOUIMAANE@UM5.AC.MA'; ...
                '- LinKedIn : ABDALAOUI MAAN AMINE'}, ...
                'Contact','custom',logo);
            uiwait(f);

% --------------------------------------------------------------------
function Ouvrir_Callback(hObject, eventdata, handles)
    [file,path,indx] = uigetfile();
    open(file);

% --------------------------------------------------------------------
function Fermer_Callback(hObject, eventdata, handles)
    close('chaine_de_transmission');
    
%---------------------------------------------------------------------    
function Sauvegarder_Callback(hObject, eventdata, handles)
    [filename, pathname, filterindex] = uiputfile( ...
       {'*.m;*.fig;*.mat;*.mdl', 'All MATLAB Files (*.m, *.fig, *.mat, *.mdl)';
        '*.m',  'MATLAB Code (*.m)'; ...
        '*.fig','Figures (*.fig)'; ...
        '*.mat','MAT-files (*.mat)'; ...
        '*.mdl','Models (*.mdl)'; ...
        '*.*',  'All Files (*.*)'}, ...
        'Save as');
    save(filename);
    


% --------------------------------------------------------------------
function Information_Callback(hObject, eventdata, handles)
run('Information');


% --------------------------------------------------------------------
function figure1_WindowKeyPressFcn(hObject, eventdata, handles)




function edit14_Callback(hObject, eventdata, handles)
function edit14_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
function edit15_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
function edit16_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
function edit17_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit18_Callback(hObject, eventdata, handles)
function edit18_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
function edit19_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
function edit20_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
function edit21_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
function edit22_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
function edit23_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Codeur_en_ligne_Callback(hObject, eventdata, handles)

% --------------------------------------------------------------------
function Filtre_emission_op_Callback(hObject, eventdata, handles)

% --------------------------------------------------------------------
function Modulation_o_Callback(hObject, eventdata, handles)

% --------------------------------------------------------------------
function ASK_o_Callback(hObject, eventdata, handles)
open('ASK_M.m')
open('ASK_D.m')

% --------------------------------------------------------------------
function OOK_o_Callback(hObject, eventdata, handles)
open('M_OOK.m')

% --------------------------------------------------------------------
function BPSK_o_Callback(hObject, eventdata, handles)
open('M_BPSK.m')



% --------------------------------------------------------------------
function Filtre_blanchissant_o_Callback(hObject, eventdata, handles)
open('FiltreBlanchissantTempFreq_function.m');

% --------------------------------------------------------------------
function Cosinus_Sureleve_Callback(hObject, eventdata, handles)

% --------------------------------------------------------------------
function Domaine_temporel_Callback(hObject, eventdata, handles)
open('CosSurelveTemp_function.m')

% --------------------------------------------------------------------
function Domaine_frequentiel_Callback(hObject, eventdata, handles)
open('CosSurelveFreq_function.m')

% --------------------------------------------------------------------
function Filtre_demi_Nyquist_o_Callback(hObject, eventdata, handles)
open('Filtre_demi_Nyquist.m')

% --------------------------------------------------------------------
function Filtre_emission_o_Callback(hObject, eventdata, handles)
f = msgbox('Le filtre d emission est le produit du filtre blanchissant avec le filtre demi Nyquist ..!','Information');

% --------------------------------------------------------------------
function NRZ_code_Callback(hObject, eventdata, handles)
open('NRZ.m')

% --------------------------------------------------------------------
function RZ_o_Callback(hObject, eventdata, handles)
open('RZ.m')

% --------------------------------------------------------------------
function Manchester_o_Callback(hObject, eventdata, handles)
open('Manchester.m')


% --------------------------------------------------------------------
function a4_Callback(hObject, eventdata, handles)
axes(handles.axes4);
cla reset;


% --------------------------------------------------------------------
function a5_Callback(hObject, eventdata, handles)
axes(handles.axes5);
cla reset;

% --------------------------------------------------------------------
function a7_Callback(hObject, eventdata, handles)
axes(handles.axes7);
cla reset;

% --------------------------------------------------------------------
function a3_Callback(hObject, eventdata, handles)
axes(handles.axes3);
cla reset;


% --------------------------------------------------------------------
function a8_Callback(hObject, eventdata, handles)
axes(handles.axes8);
cla reset;


% --------------------------------------------------------------------
function a6_Callback(hObject, eventdata, handles)
axes(handles.axes6);
cla reset;

% --------------------------------------------------------------------
function a9_Callback(hObject, eventdata, handles)
axes(handles.axes9);
cla reset;

% --------------------------------------------------------------------
function clear_all_Callback(hObject, eventdata, handles)
axes(handles.axes4);
cla reset;
axes(handles.axes5);
cla reset;
axes(handles.axes6);
cla reset;
axes(handles.axes7);
cla reset;
axes(handles.axes8);
cla reset;
axes(handles.axes3);
cla reset;
axes(handles.axes9);
cla reset;


% --------------------------------------------------------------------
function zoom_Callback(hObject, eventdata, handles)
zoom in


% --------------------------------------------------------------------
function Ouvrir_ClickedCallback(hObject, eventdata, handles)
    [file,path,indx] = uigetfile();
    open(file);


% --------------------------------------------------------------------
function Sauvegarder_ClickedCallback(hObject, eventdata, handles)
    [filename, pathname, filterindex] = uiputfile( ...
       {'*.m;*.fig;*.mat;*.mdl', 'All MATLAB Files (*.m, *.fig, *.mat, *.mdl)';
        '*.m',  'MATLAB Code (*.m)'; ...
        '*.fig','Figures (*.fig)'; ...
        '*.mat','MAT-files (*.mat)'; ...
        '*.mdl','Models (*.mdl)'; ...
        '*.*',  'All Files (*.*)'}, ...
        'Save as');
    save(filename);
    
