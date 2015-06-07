function varargout = board(varargin)
% BOARD MATLAB code for board.fig
%      BOARD, by itself, creates a new BOARD or raises the existing
%      singleton*.
%
%      H = BOARD returns the handle to a new BOARD or the handle to
%      the existing singleton*.
%
%      BOARD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BOARD.M with the given input arguments.
%
%      BOARD('Property','Value',...) creates a new BOARD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before board_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to board_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help board

% Last Modified by GUIDE v2.5 07-Jun-2015 00:43:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @board_OpeningFcn, ...
                   'gui_OutputFcn',  @board_OutputFcn, ...
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


% --- Executes just before board is made visible.
function board_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to board (see VARARGIN)

% Choose default command line output for board
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes board wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%load('board','pass');
global pass change
change = 0;
%set background
pic1 = imread('pic/boardbg.jpg');
axes(handles.axes6);
image(pic1);
axis off

%set board image
%pic2 = imread('pic/bd1.jpg');
axes(handles.axes1);
%image(pic2)
%axis off
grid on;

%set playboard click
set(handles.axes1,'ButtonDownFcn',@click);

%set players
string = [ 'pic/p' int2str(pass(1)) '.jpg' ];
pic3 = imread(string);
axes(handles.axes2);
image(pic3);
axis off
string = [ 'pic/p' int2str(pass(2)) '.jpg' ];
pic4 = imread(string);
axes(handles.axes3);
image(pic4);
axis off
%change buttom style
A = imread('pic/yellowpushbuttom.jpg'); 
set(handles.changebg,'CData',A);


% --- Outputs from this function are returned to the command line.
function varargout = board_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in changebg.
function changebg_Callback(hObject, eventdata, handles)

% hObject    handle to changebg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%change buttom style
global change;
change = change + 1 ;
k = mod(change,4);
switch k
    case 0
        A = imread('pic/bd1.jpg'); 
        axes(handles.axes1);
        image(A);
        axis off
    case 1
        A = imread('pic/bd2.jpg'); 
        axes(handles.axes1);
        image(A);
        axis off
    case 2
        A = imread('pic/bd3.jpg'); 
        axes(handles.axes1);
        image(A);
        axis off
    case 3
        A = imread('pic/bd4.jpg'); 
        axes(handles.axes1);
        image(A);
        axis off
end


% --- Executes on button press in pushbutton5.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function click(gcbo,eventdata,handles)
a = 5

