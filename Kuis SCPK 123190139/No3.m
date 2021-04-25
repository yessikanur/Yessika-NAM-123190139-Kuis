function varargout = No3(varargin)
% NO3 MATLAB code for No3.fig
%      NO3, by itself, creates a new NO3 or raises the existing
%      singleton*.
%
%      H = NO3 returns the handle to a new NO3 or the handle to
%      the existing singleton*.
%
%      NO3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NO3.M with the given input arguments.
%
%      NO3('Property','Value',...) creates a new NO3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before No3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to No3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help No3

% Last Modified by GUIDE v2.5 24-Apr-2021 19:03:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @No3_OpeningFcn, ...
                   'gui_OutputFcn',  @No3_OutputFcn, ...
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


% --- Executes just before No3 is made visible.
function No3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to No3 (see VARARGIN)

% Choose default command line output for No3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes No3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = No3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button classify in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('student-mat.csv');
opts.SelectedVariableNames = (24:27);
data = readmatrix('student-mat.csv',opts);
set(handles.uitable1,'data',data);


function goout_Callback(hObject, eventdata, handles)
% hObject    handle to goout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of goout as text
%        str2double(get(hObject,'String')) returns contents of goout as a double


% --- Executes during object creation, after setting all properties.
function goout_CreateFcn(hObject, eventdata, handles)
% hObject    handle to goout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function freetime_Callback(hObject, eventdata, handles)
% hObject    handle to freetime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of freetime as text
%        str2double(get(hObject,'String')) returns contents of freetime as a double


% --- Executes during object creation, after setting all properties.
function freetime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to freetime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dalc_Callback(hObject, eventdata, handles)
% hObject    handle to dalc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dalc as text
%        str2double(get(hObject,'String')) returns contents of dalc as a double


% --- Executes during object creation, after setting all properties.
function dalc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dalc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function famrel_Callback(hObject, eventdata, handles)
% hObject    handle to famrel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of famrel as text
%        str2double(get(hObject,'String')) returns contents of famrel as a double


% --- Executes during object creation, after setting all properties.
function famrel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to famrel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button classify in classify.
function classify_Callback(hObject, eventdata, handles)
% hObject    handle to classify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
famrel   = str2double(get(handles.famrel,'String'));
freetime = str2double(get(handles.freetime,'String'));
goout    = str2double(get(handles.goout,'String'));
dalc     = str2double(get(handles.dalc,'String'));

sample = [famrel freetime goout dalc];

opts = detectImportOptions('student-mat.csv');
opts.SelectedVariableNames = (24:27);
training = readmatrix('student-mat.csv',opts);

opts = detectImportOptions('student-mat.csv');
opts.SelectedVariableNames = (29);
group = readmatrix('student-mat.csv',opts);

class = fitcknn(training, group, 'NumNeighbors', 5);
klasifikasi = predict(class, sample);

set(handles.health, 'String', klasifikasi);
