clc;
clear ;
close all;

% set figure and background 
h_main = figure('Position',[500 350 400 300],'Menubar','none','NumberTitle','off');
h_background = axes('units','normalized','position',[0 0 1 1]);
uistack(h_background,'down')
backgroundimage=imread('Avengers-Endgame.jpg');
image(backgroundimage)
colormap gray
set(h_background,'handlevisibility','off','visible','off');
set(h_main,'Name', 'Avengers Endgame');

% set uibutton
h_edit = uicontrol('style','edit','position',[90 200 220 25]);
h_ok = uicontrol('style','pushbutton','position',[320 200 25 25],'string','ok','BackgroundColor','white');
h_help = uicontrol('style','pushbutton','position',[360 15 25 25],'string','help','BackgroundColor','white');
h_helptext = uicontrol('style','text','position',[150 20 200 15],'string','If you have not seen this movie before...','BackgroundColor',[0.5451 0.53725 0.53725] );
h_title = uicontrol('style','text','position',[5 280 170 15],'string','復仇者聯盟4小百科 & 戰鬥力榜單','BackgroundColor',[0.5451 0.53725 0.53725]);
% callback the result
set(h_ok,'callback','findtext');
set(h_help,'callback','touchone');
tscan = textread('alltext.txt','%s','delimiter','');
