

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
function PlayButton_Callback(hObject, eventdata, handles,CelestialObjects)
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
function objectList_Callback(hObject, eventdata, handles)
% hObject    handle to objectList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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
CelestialObjects(:,:) = [0 0 1.989E30 432687 0 0;57.9E6 0 .33E24 2439.5 0 47.4;108.2E6 0 4.87E24 6052 0 35;149.6E6 0 5.97E24 6378 0 29.8;227.9E6 0 .642E24 3396 0 24.1;778.E6 0 1898E24 71492 0 13.1;1433.5E6 0 569E24 60268 0 9.7;2872.5E6 0 86.8E24 25559 0 6.8;4495.1E6 0 102E24 24764 0 5.4;0 0 0 0 0 0];
Time = str2double(get(handles.editTime,'String'));
Mass = str2double(get(handles.earthMass,'String'));
Angle = str2double(get(handles.editAngle,'String'));
Vel = str2double(get(handles.editVelocity,'String'));
Name = str2double(get(handles.editName,'String'));
if ~isnan(Mass) && ~isnan(Time) && (~isnan(Angle)) && (~isnan(Vel)) && isnan(Name)
    Name = get(handles.editName,'String');
    set(handles.editAngle,'String','');
    set(handles.earthMass,'String','');
    set(handles.editTime,'String','');
    set(handles.editVelocity,'String','');
    set(handles.editName,'String','');
    set(handles.editVelocity,'String','');
    choice = get(handles.objectList,'Value');
    y = 0;
    switch choice
        case 1
            choice = 'Sun';
            x = CelestialObjects(1,1)+2*CelestialObjects(1,4);
        case 2
            choice = 'Mercury';
            x = CelestialObjects(2,1)+CelestialObjects(2,4);
        case 3
            choice = 'Venus';
            x = CelestialObjects(3,1)+CelestialObjects(3,4);
        case 4
            choice = 'Earth';
            x = CelestialObjects(4,1)+CelestialObjects(4,4);
        case 5
            choice = 'Mars';
            x = CelestialObjects(5,1)+CelestialObjects(5,4);
        case 6
            choice = 'Jupiter';
            x = CelestialObjects(6,1)+CelestialObjects(6,4);
        case 7
            choice = 'Saturn';
            x = CelestialObjects(7,1)+CelestialObjects(7,4);
        case 8
            choice = 'Uranus';
            x = CelestialObjects(8,1)+CelestialObjects(8,4);
        case 9
            choice = 'Neptune';
            x = CelestialObjects(9,1)+CelestialObjects(9,4);
    end
    Xvel = Vel*cos(Angle);
    Yvel = Vel*sin(Angle);
    CelestialObjects(10,:) = [x y 1 Mass Xvel Yvel];
    CelestialObjects
    NewCelestialObjects = RunStep(CelestialObjects,1)
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



function editAngle_Callback(hObject, eventdata, handles)
% hObject    handle to editRad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Rad = str2double(get(handles.editX,'String'));
if isnan(Rad)
    Rad = 0;
    set(handles.editRad,'String','');
    errordlg('Input must be a number.');
    pause(2);
end
% Hints: get(hObject,'String') returns contents of editRad as text
%        str2double(get(hObject,'String')) returns contents of editRad as a double


% --- Executes during object creation, after setting all properties.
function editAngle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editRad (see GCBO)
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



