%% get the edit string and compare with the tscan
text = get(h_edit,'string');
comp = strfind(tscan,text); % compare the database and text
x = find(cellfun(@isempty,comp)==0); % find the number which is not empty
[numofx,y]=size(x); % get x size  
if numofx > 0 % determine whether x have data
    str = [tscan(x,:)];
else
    str = ['No data you are looking for. But you can add what you want.'];
end

%% push 'ok' again
if get(h_ok,'value') == 1
    set(h_main,'visible','off');
    h_main = figure('Position',[500 350 400 300],'Menubar','none','NumberTitle','off');
    h_edit = uicontrol('style','edit','string',text,'position',[90 260 220 25]);
    h_ok = uicontrol('style','pushbutton','position',[320 260 25 25],'string','ok','BackgroundColor','white');
    h_list =  uicontrol('style','listbox','position',[60 50 300 180]);
    h_add = uicontrol('style','pushbutton','position',[160 20 80 25],'string','Add or Delete','BackgroundColor','white');
    
    h_background = axes('units','normalized','position',[0 0 1 1]);
    uistack(h_background,'down')
    backgroundimage=imread('avengers-endgame-poster.jpg');
    image(backgroundimage)
    colormap gray
    
    set(h_add,'callback','addto');
    set(h_main,'Name', 'Avengers Endgame');
    set(h_background,'handlevisibility','off','visible','off');
end

%%
h_back = uicontrol('style','pushbutton','position',[340 20 45 15],'string','goback','BackgroundColor','white');
set(h_list,'String',str);
set(h_ok,'callback','findtext');
set(h_back,'callback','MATLAB0522')

