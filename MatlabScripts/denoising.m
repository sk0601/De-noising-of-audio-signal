function varargout = denoising(varargin)
% DENOISING MATLAB code for denoising.fig
%      DENOISING, by itself, creates a new DENOISING or raises the existing
%      singleton*.
%
%      H = DENOISING returns the handle to a new DENOISING or the handle to
%      the existing singleton*.
%
%      DENOISING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DENOISING.M with the given input arguments.
%
%      DENOISING('Property','Value',...) creates a new DENOISING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before denoising_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to denoising_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help denoising

% Last Modified by GUIDE v2.5 30-Oct-2017 22:07:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @denoising_OpeningFcn, ...
                   'gui_OutputFcn',  @denoising_OutputFcn, ...
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


% --- Executes just before denoising is made visible.
function denoising_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to denoising (see VARARGIN)

% Choose default command line output for denoising
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes denoising wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = denoising_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
