function varargout = player(varargin)
% PLAYER MATLAB code for player.fig
%      PLAYER, by itself, creates a new PLAYER or raises the existing
%      singleton*.
%
%      H = PLAYER returns the handle to a new PLAYER or the handle to
%      the existing singleton*.
%
%      PLAYER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLAYER.M with the given input arguments.
%
%      PLAYER('Property','Value',...) creates a new PLAYER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before player_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to player_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help player

% Last Modified by GUIDE v2.5 07-Jun-2015 00:37:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @player_OpeningFcn, ...
                   'gui_OutputFcn',  @player_OutputFcn, ...
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


% --- Executes just before player is made visible.
function player_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to player (see VARARGIN)
% Choose default command line output for player
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes player wait for user response (see UIRESUME)
% uiwait(handles.player);
global pass;
pass = [0 0];
background = importdata('pic/playerbg.jpg');
axes(handles.axes1);
image(background);
axis off
p2 = imread('pic/frame.jpg');
axes(handles.axes2);
image(p2);
axis off
axes(handles.axes3);
image(p2);
axis off
%change buttom style
A = imread('pic/bluepushbuttom.jpg'); 
set(handles.gamestart,'CData',A);
handles.array = {handles.p1, handles.p2, handles.p3,handles.p4,handles.p5,handles.p6,handles.p7,handles.p8,handles.p9,handles.p10,handles.p11,handles.p12,handles.p13};
handles.vector = {handles.axes4,handles.axes5};
handles.control = 0;
guidata(hObject,handles);
%set player style
for i= 1:13
    string = ['pic/p' int2str(i) '.jpg'];
    A = imread(string);
    set(handles.array{i},'CData',A);
end


% --- Outputs from this function are returned to the command line.
function varargout = player_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in gamestart.
function gamestart_Callback(hObject, eventdata, handles)
% hObject    handle to gamestart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcbf);
board();


% --- Executes on button press in p1.
function p1_Callback(hObject, eventdata, handles)
% hObject    handle to p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 1];
    end
    end
    p = imread('pic/p1.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p1,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end
    
        

% --- Executes on button press in p2.
function p2_Callback(hObject, eventdata, handles)
% hObject    handle to p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 2];
    end
    end
    p = imread('pic/p2.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p2,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end

% --- Executes on button press in p3.
function p3_Callback(hObject, eventdata, handles)
% hObject    handle to p3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 3];
    end
    end
    p = imread('pic/p3.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p3,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end

% --- Executes on button press in p4.
function p4_Callback(hObject, eventdata, handles)
% hObject    handle to p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 4];
    end
    end
    p = imread('pic/p4.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p4,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end


% --- Executes on button press in p5.
function p5_Callback(hObject, eventdata, handles)
% hObject    handle to p5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 5];
    end
    end
    p = imread('pic/p5.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p5,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end


% --- Executes on button press in p6.
function p6_Callback(hObject, eventdata, handles)
% hObject    handle to p6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 6];
    end
    end
    p = imread('pic/p6.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p6,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end

% --- Executes on button press in p7.
function p7_Callback(hObject, eventdata, handles)
% hObject    handle to p7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 7];
    end
    end
    p = imread('pic/p7.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p7,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end


% --- Executes on button press in p8.
function p8_Callback(hObject, eventdata, handles)
% hObject    handle to p8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 8];
    end
    end
    p = imread('pic/p8.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p8,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end


% --- Executes on button press in p9.
function p9_Callback(hObject, eventdata, handles)
% hObject    handle to p9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 9];
    end
    end
    p = imread('pic/p9.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p9,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end


% --- Executes on button press in p10.
function p10_Callback(hObject, eventdata, handles)
% hObject    handle to p10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 10];
    end
    end
    p = imread('pic/p10.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p10,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end


% --- Executes on button press in p11.
function p11_Callback(hObject, eventdata, handles)
% hObject    handle to p11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 11];
    end
    end
    p = imread('pic/p11.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p11,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end


% --- Executes on button press in p12.
function p12_Callback(hObject, eventdata, handles)
% hObject    handle to p12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 12];
    end
    end
    p = imread('pic/p12.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p12,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end


% --- Executes on button press in p13.
function p13_Callback(hObject, eventdata, handles)
% hObject    handle to p13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pass
if ~isequal(handles.control,2)
    v = 1;
    for i = 1:13
    if isequal(get(handles.array{i},'Enable'),'off')
        v = 2;
        pass = [i 13];
    end
    end
    p = imread('pic/p13.jpg');
    axes(handles.vector{v});
    image(p)
    axis off;
    set(handles.p13,'Enable','off')
    handles.control= handles.control + 1;
    guidata(hObject,handles);
end