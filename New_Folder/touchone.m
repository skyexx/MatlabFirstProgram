clc;
clear;

% set figure and background 
figtouch = figure('Position', [500 350 450 300],'Menubar','none','NumberTitle','off');
axes('Position', [0 0 1 1]); % Ã¸¹Ï°Ï
img=imread('majorphoto.jpg');
image(img);
h_gogo = uicontrol('style','pushbutton','position',[380 270 45 15],'string','goback','BackgroundColor','white');
h_text = uicontrol('style','text','string','You can point every roles to learn more about it.',...
    'position',[10 280 240 15]);

set(gcf,'WindowButtonDownFcn','somenew');
set(figtouch,'Name', 'Avengers Endgame');
set(h_gogo,'callback','MATLAB0522')

