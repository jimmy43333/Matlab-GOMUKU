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

% Last Modified by GUIDE v2.5 04-Jun-2015 22:41:34

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


% --- Outputs from this function are returned to the command line.
function varargout = board_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
