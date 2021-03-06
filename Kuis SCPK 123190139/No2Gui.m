function varargout = No2Gui(varargin)
% NO2GUI MATLAB code for No2Gui.fig
%      NO2GUI, by itself, creates a new NO2GUI or raises the existing
%      singleton*.
%
%      H = NO2GUI returns the handle to a new NO2GUI or the handle to
%      the existing singleton*.
%
%      NO2GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NO2GUI.M with the given input arguments.
%
%      NO2GUI('Property','Value',...) creates a new NO2GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before No2Gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to No2Gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help No2Gui

% Last Modified by GUIDE v2.5 25-Apr-2021 00:46:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @No2Gui_OpeningFcn, ...
                   'gui_OutputFcn',  @No2Gui_OutputFcn, ...
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


% --- Executes just before No2Gui is made visible.
function No2Gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to No2Gui (see VARARGIN)

% Choose default command line output for No2Gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes No2Gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = No2Gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function style_Callback(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of style as text
%        str2double(get(hObject,'String')) returns contents of style as a double
style = str2double(get(hObject,'String'));
handles.style = style;
guidata(hObject.handles);


% --- Executes during object creation, after setting all properties.
function style_CreateFcn(hObject, eventdata, handles)
% hObject    handle to style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mfault_Callback(hObject, eventdata, handles)
% hObject    handle to mfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mfault as text
%        str2double(get(hObject,'String')) returns contents of mfault as a double
mfault = str2double(get(hObject,'String'));
handles.mfault = mfault;
guidata(hObject.handles);

% --- Executes during object creation, after setting all properties.
function mfault_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in uji.
function uji_Callback(hObject, eventdata, handles)
% hObject    handle to uji (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cek = readfis('No2');
out = evalfis([handles.style handles.mfault],cek)
set(handles.text7,'String',out);
if out<=100 && out>=60
    set(handles.text8,'String','Tinggi');
elseif out<=70 && out>=50
    set(handles.text8,'String','Sedang');
else
    set(handles.text8,'String','Rendah');
end;



function nilai_Callback(hObject, eventdata, handles)
% hObject    handle to nilai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nilai as text
%        str2double(get(hObject,'String')) returns contents of nilai as a double


% --- Executes during object creation, after setting all properties.
function nilai_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nilai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
