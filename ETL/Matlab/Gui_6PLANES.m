function varargout = Gui_6PLANES(varargin)
% GUI_6PLANES MATLAB code for Gui_6PLANES.fig
%      GUI_6PLANES, by itself, creates a new GUI_6PLANES or raises the existing
%      singleton*.
%
%      H = GUI_6PLANES returns the handle to a new GUI_6PLANES or the handle to
%      the existing singleton*.
%
%      GUI_6PLANES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_6PLANES.M with the given input arguments.
%
%      GUI_6PLANES('Property','Value',...) creates a new GUI_6PLANES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gui_6PLANES_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gui_6PLANES_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gui_6PLANES

% Last Modified by GUIDE v2.5 26-Nov-2019 14:06:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gui_6PLANES_OpeningFcn, ...
                   'gui_OutputFcn',  @Gui_6PLANES_OutputFcn, ...
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


% --- Executes just before Gui_6PLANES is made visible.
function Gui_6PLANES_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.edit1,'String','0');
set(handles.plane2,'String','0');
% UIWAIT makes Gui_6PLANES wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Gui_6PLANES_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)

%valRES = (get(handles.edit5,'String'));
%valSTR=get(handles.listbox2,'String');
%valVAL=get(handles.listbox2,'Value');
%set(handles.text6, 'String', num2str(val));
%valRES=valSTR(valVAL);

%valRES=valRES{1};
valRES=get(handles.edit5,'String')      %chere chceck if it is working now
%valRES=str2num(get(handles.edit5,'String'));   
                                                 
                                               
nPL=(get(handles.listbox3,'Value'))+1;
%    val=str2num(val{1});

 valRES=str2num(valRES{1})*10000;

 val(1) = str2num(get(handles.edit1,'String'));
 val(2) = str2num(get(handles.plane2,'String'));
 val(3) = str2num(get(handles.plane3,'String'));
 val(4) = str2num(get(handles.plane4,'String'));
 val(5) = str2num(get(handles.plane5,'String'));
 val(6) = str2num(get(handles.plane6,'String'));

global a;
h=waitbar(0,'Please wait...');
for i=   1:nPL
    valFinal=val(i)+(valRES)+100000000*nPL+10000000*i
    waitbar(i/nPL);
    pause(5);
    fprintf(a,'%3.9d\n',valFinal)
end
close(h);



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
%set(handles.edit1,'String','0');



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
global a;

val=get(handles.listbox1,'Value');

s1 = 'COM';
s2 = num2str(val);
s = strcat(s1,s2);
if hObject.Value==1
    %a=serial('COM7','BaudRate',9600);
    a=serial(s,'BaudRate',9600);
    fopen(a);
    pause(2);
end

if hObject.Value==0
    if ~isempty(instrfind)
     fclose(instrfind);
     delete(instrfind);
    end
   
    
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
val=get(hObject,'Value');
%set(handles.text6, 'String', num2str(val));
set(handles.text6, 'String', val);


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',{'1';'2';'3';'4';'5';'6';'7';'8';'9';'10';'11';'12';'13';'14';'15';'16';'17';'18';'19';'20';'21';'22';'23';'24';'25';'26';'27';'28';});


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val = (get(handles.edit3,'String'))

%val2 = (get(handles.edit52,'String'));
%    val=str2num(val{1});
 val=str2num(val);
 %val2=str2num(val2)*10000;
 val2=1*10000;
 val2=0;
%global a=serial('COM10','BaudRate',9600);
%fopen(a);
%pause(2);
%val=4094;
global a;
%nPL=get(handles.listbox3,'Value');
valFinal=val+(val2)+100000000*7
fprintf(a,'%3.9d\n',valFinal)

% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

valSTR=get(hObject,'String');
valVAL=get(hObject,'Value');
%set(handles.text6, 'String', num2str(val));
val=valSTR(valVAL);
set(handles.edit5, 'String', val);


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',{'8';'16';'32';'48';'64';'128';'160';'256';'512'});

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double



% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3
val=get(hObject,'Value');
val=val+1;
if val==2
    set(handles.plane3,'Visible','Off')
    set(handles.plane4,'Visible','Off')
    set(handles.plane5,'Visible','Off')
    set(handles.plane6,'Visible','Off')
end

if val==3
    set(handles.plane3,'Visible','On')
    set(handles.plane4,'Visible','Off')
    set(handles.plane5,'Visible','Off')
    set(handles.plane6,'Visible','Off')
end

if val==4
    set(handles.plane3,'Visible','On')
    set(handles.plane4,'Visible','On')
    set(handles.plane5,'Visible','Off')
    set(handles.plane6,'Visible','Off')
end

if val==5
    set(handles.plane3,'Visible','On')
    set(handles.plane4,'Visible','On')
    set(handles.plane5,'Visible','On')
    set(handles.plane6,'Visible','Off')
end

if val==6
    set(handles.plane3,'Visible','On')
    set(handles.plane4,'Visible','On')
    set(handles.plane5,'Visible','On')
    set(handles.plane6,'Visible','On')
end


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',{'2';'3';'4';'5';'6'});


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3



function plane2_Callback(hObject, eventdata, handles)
% hObject    handle to plane2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of plane2 as text
%        str2double(get(hObject,'String')) returns contents of plane2 as a double


% --- Executes during object creation, after setting all properties.
function plane2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plane2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function plane3_Callback(hObject, eventdata, handles)
% hObject    handle to plane3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of plane3 as text
%        str2double(get(hObject,'String')) returns contents of plane3 as a double


% --- Executes during object creation, after setting all properties.
function plane3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plane3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'Visible','Off')



function plane4_Callback(hObject, eventdata, handles)
% hObject    handle to plane4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of plane4 as text
%        str2double(get(hObject,'String')) returns contents of plane4 as a double


% --- Executes during object creation, after setting all properties.
function plane4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plane4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'Visible','Off')



function plane5_Callback(hObject, eventdata, handles)
% hObject    handle to plane5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of plane5 as text
%        str2double(get(hObject,'String')) returns contents of plane5 as a double


% --- Executes during object creation, after setting all properties.
function plane5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plane5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'Visible','Off')


function plane6_Callback(hObject, eventdata, handles)
% hObject    handle to plane6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of plane6 as text
%        str2double(get(hObject,'String')) returns contents of plane6 as a double


% --- Executes during object creation, after setting all properties.
function plane6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plane6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'Visible','Off')


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val = (get(handles.edit11,'String'));
val=str2num(val{1})*10000;
valSTR=get(handles.listbox5,'String');
valVAL=get(handles.listbox5,'Value');
%set(handles.text6, 'String', num2str(val));
val2=(valSTR(valVAL));
val2=val2{1};
val2=str2num(val2);
global a;
%valFinal=val+(val2)+100000000*7
valFinal=val+(val2)+100000000
fprintf(a,'%3.9d\n',valFinal)

% --- Executes on selection change in listbox4.
function listbox4_Callback(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox4
valSTR=get(hObject,'String');
valVAL=get(hObject,'Value');
%set(handles.text6, 'String', num2str(val));
val=valSTR(valVAL);
set(handles.edit11, 'String', val);


% --- Executes during object creation, after setting all properties.
function listbox4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',{'8';'16';'32';'48';'64';'128';'160';'256';'512'});

% --- Executes on selection change in listbox5.
function listbox5_Callback(hObject, eventdata, handles)
% hObject    handle to listbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox5


% --- Executes during object creation, after setting all properties.
function listbox5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'String',{'1';'2';'3';'4';'5';'6';'7';'8';'9';'10';'11';'12';'13';'14';'15';'16';'17';'18';'19';'20'});

function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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
