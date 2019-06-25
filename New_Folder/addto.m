% set figure and background 
fig1 = figure('Position',[500 350 660 300],'Name','Avengers Endgame','Numbertitle','off','Menubar','none');
addlist = uicontrol('style','edit','position',[60 40 550 220],'max',2,'min',0);
h_background = axes('units','normalized','position',[0 0 1 1]);
uistack(h_background,'down')
backgroundimage=imread('avengers-endgame-trailer.jpg');
image(backgroundimage)
colormap gray

% set the data into the addlist and edit it
for ii=1:size(tscan)
    set(addlist,'string',tscan,'fontsize',8,'HorizontalAlignment','left');
end

% save it 
set(fig1,'Name', 'Avengers Endgame');
h_save = uicontrol('style','pushbutton','position',[500 10 100 25],'string','save your change','BackgroundColor','white');
set(h_save,'callback','saveadd')
