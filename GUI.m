
function varargout = GUI(varargin)
%GUI M-file for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('Property','Value',...) creates a new GUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to GUI_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUI('CALLBACK') and GUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 01-Apr-2016 18:34:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function TimeSlider_Callback(hObject, eventdata, handles)
% hObject    handle to TimeSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function TimeSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TimeSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in PlayButton.
function PlayButton_Callback(hObject, eventdata, handles)
% hObject    handle to PlayButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function dispX_Callback(hObject, eventdata, handles)
% hObject    handle to dispX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dispX as text
%        str2double(get(hObject,'String')) returns contents of dispX as a double


% --- Executes during object creation, after setting all properties.
function dispX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dispX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dispY_Callback(hObject, eventdata, handles)
% hObject    handle to dispY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dispY as text
%        str2double(get(hObject,'String')) returns contents of dispY as a double


% --- Executes during object creation, after setting all properties.
function dispY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dispY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in objectList.
function objectList_Callback(hObject, eventdata, handles, array, num)
% hObject    handle to objectList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = get(handles.objectList,'Value');

switch choice
    case 1
        
    case 2
        
    case 3
        
    case 4
        
    case 5
        
    case 6
        
    case 7
        
    case 8
end
% Hints: contents = cellstr(get(hObject,'String')) returns objectList contents as cell array
%        contents{get(hObject,'Value')} returns selected item from objectList


% --- Executes during object creation, after setting all properties.
function objectList_CreateFcn(hObject, eventdata, handles)
% hObject    handle to objectList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Add.
function Add_Callback(hObject, eventdata, handles)
% hObject    handle to Add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
persistent array;
persistent num;
Xcoord = str2double(get(handles.editX,'String'));
Ycoord = str2double(get(handles.editY,'String'));
Rad = str2double(get(handles.editRad,'String'));
Mass = str2double(get(handles.earthMass,'String'));
Vel = str2double(get(handles.editVelocity,'String'));
Time = str2double(get(handles.editTime,'String'));
Name = str2double(get(handles.editName,'String'));
if (~isnan(Xcoord)) && (~isnan(Ycoord)) && (~isnan(Rad)) && isnan(Name)
    list = get(handles.objectList,'String');
    Name = get(handles.editName,'String');
    len = length(list);
    list{end+1} = Name;
    set(handles.editTime,'String','');
    set(handles.objectList,'String',list);
    set(handles.editX,'String','');
    set(handles.editY,'String','');
    set(handles.editRad,'String','');
    set(handles.editName,'String','');
    set(handles.editVelocity,'String','');
    if isempty(array)
        array = zeros(30,7);
        num = 0;
    end
    num = num+1;
    Nsum = sum(Name);
    set(handles.objectList,'Value',Nsum);
    array(num,:) = [Nsum;Xcoord;Ycoord;Rad;Mass;Vel;Time];
    fprintf('sum = %s',Nsum);
    objectList_Callback(hObject,eventdata,handles,array,num);
end


% --- Executes during object creation, after setting all properties.
function editTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in saveEdit.
function editTime_Callback(hObject, eventdata, handles)
% hObject    handle to saveEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Time = str2double(get(handles.editTime,'String'));
if isnan(Time)
    Time = 0;
    set(handles.editTime,'String','');
    errordlg('Time must be a number.');
    pause(2);
end

function editName_Callback(hObject, eventdata, handles)
% hObject    handle to editName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editName as text
%        str2double(get(hObject,'String')) returns contents of editName as a double


% --- Executes during object creation, after setting all properties.
function editName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in saveEdit.
function saveEdit_Callback(hObject, eventdata, handles)
% hObject    handle to saveEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function dispV_Callback(hObject, eventdata, handles)
% hObject    handle to dispV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dispV as text
%        str2double(get(hObject,'String')) returns contents of dispV as a double


% --- Executes during object creation, after setting all properties.
function dispV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dispV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dispT_Callback(hObject, eventdata, handles)
% hObject    handle to dispT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dispT as text
%        str2double(get(hObject,'String')) returns contents of dispT as a double


% --- Executes during object creation, after setting all properties.
function dispT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dispT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editVelocity_Callback(hObject, eventdata, handles)
% hObject    handle to editVelocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
V = str2double(get(handles.editVelocity,'String'));
if isnan(V)
    Rad = 0;
    set(handles.editVelocity,'String','');
    errordlg('Velocity must be a number.');
    pause(2);
end

% Hints: get(hObject,'String') returns contents of editVelocity as text
%        str2double(get(hObject,'String')) returns contents of editVelocity as a double


% --- Executes during object creation, after setting all properties.
function editVelocity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVelocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CalcCheck.
function CalcCheck_Callback(hObject, eventdata, handles)
% hObject    handle to CalcCheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CalcCheck



function earthMass_Callback(hObject, eventdata, handles)
% hObject    handle to earthMass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of earthMass as text
%        str2double(get(hObject,'String')) returns contents of earthMass as a double


% --- Executes during object creation, after setting all properties.
function earthMass_CreateFcn(hObject, eventdata, handles)
% hObject    handle to earthMass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editRad_Callback(hObject, eventdata, handles)
% hObject    handle to editRad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Rad = str2double(get(handles.editRad,'String'));
if isnan(Rad)
    Rad = 0;
    set(handles.editRad,'String','');
    errordlg('Radius must be a number.');
    pause(2);
end
% Hints: get(hObject,'String') returns contents of editRad as text
%        str2double(get(hObject,'String')) returns contents of editRad as a double


% --- Executes during object creation, after setting all properties.
function editRad_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editRad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editY_Callback(hObject, eventdata, handles)
% hObject    handle to editY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Ycoord = str2double(get(handles.editY,'String'));
if isnan(Ycoord)
    Ycoord = 0;
    set(handles.editY,'String','');
    errordlg('Y value must be a number.');
    pause(2);
end
% Hints: get(hObject,'String') returns contents of editY as text
%        str2double(get(hObject,'String')) returns contents of editY as a double


% --- Executes during object creation, after setting all properties.
function editY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editX_Callback(hObject, eventdata, handles)
% hObject    handle to editX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Xcoord = str2double(get(handles.editX,'String'));
if isnan(Xcoord)
    Xcoord = 0;
    set(handles.editX,'String','');
    errordlg('X value must be a number.');
    pause(2);
end
% Hints: get(hObject,'String') returns contents of editX as text
%        str2double(get(hObject,'String')) returns contents of editX as a double


% --- Executes during object creation, after setting all properties.
function editX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Clearbutton.
function Clearbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Clearbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.editX,'String','');
set(handles.editY,'String','');
set(handles.editRad,'String','');
set(handles.editName,'String','');
set(handles.editVelocity,'String','');


% --- Executes on button press in DeleteButton.
function DeleteButton_Callback(hObject, eventdata, handles)
% hObject    handle to DeleteButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




