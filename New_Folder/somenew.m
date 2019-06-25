% get mouse's position
current_pt = get(gca,'CurrentPoint');
x0 = current_pt(1,1); % 盎代菲公村夹 x 畒夹
y0 = current_pt(1,2); % 盎代菲公村夹 y 畒夹

fighelp = figure('Position', [500 350 470 350],'Name','Avengers Endgame','Numbertitle','off','Menubar','none');
set(fighelp,'Name', 'Avengers Endgame');
h_background = axes('units','normalized','position',[0 0 1 1]);
uistack(h_background,'down')
backgroundimage=imread('avengers-endgame-poster.jpg');
image(backgroundimage)
colormap gray

h_avengerlist = uicontrol('style','listbox','position',[30 40 410 130]);

[num,avengername]=xlsread('someroles');

if x0 < 220 && x0 > 5 && y0 < 236 && y0 >2
    set(h_avengerlist,'string',avengername(:,12),'fontsize',8,'HorizontalAlignment','left');
elseif x0 < 553 && x0 > 345 && y0 < 237 && y0 >3
    set(h_avengerlist,'string',avengername(:,1),'fontsize',8,'HorizontalAlignment','left');
elseif x0 < 687 && x0 > 572 && y0 < 265 && y0 >103
    set(h_avengerlist,'string',avengername(:,3),'fontsize',8,'HorizontalAlignment','left');
elseif x0 < 505 && x0 > 436 && y0 < 373 && y0 >271
    set(h_avengerlist,'string',avengername(:,4),'fontsize',8,'HorizontalAlignment','left');
elseif x0 < 280 && x0 > 226 && y0 < 349 && y0 >263
    set(h_avengerlist,'string',avengername(:,8),'fontsize',8,'HorizontalAlignment','left');
elseif x0 < 236 && x0 > 193 && y0 < 473 && y0 >405
    set(h_avengerlist,'string',avengername(:,9),'fontsize',8,'HorizontalAlignment','left');
elseif x0 < 368 && x0 > 272 && y0 < 505 && y0 >371
    set(h_avengerlist,'string',avengername(:,5),'fontsize',8,'HorizontalAlignment','left');
elseif x0 < 426 && x0 > 362 && y0 < 589 && y0 >524
    set(h_avengerlist,'string',avengername(:,7),'fontsize',8,'HorizontalAlignment','left');
elseif x0 < 591 && x0 > 485 && y0 < 571 && y0 >420
    set(h_avengerlist,'string',avengername(:,2),'fontsize',8,'HorizontalAlignment','left');
elseif x0 < 765 && x0 > 697 && y0 < 441 && y0 >330
    set(h_avengerlist,'string',avengername(:,10),'fontsize',8,'HorizontalAlignment','left');
elseif x0 < 905 && x0 > 811 && y0 < 527 && y0 >404
    set(h_avengerlist,'string',avengername(:,11),'fontsize',8,'HorizontalAlignment','left');
else
    set(h_avengerlist,'string','please try another one','fontsize',8,'HorizontalAlignment','left');
end

h_picture = axes('units','normalized','position',[0.25 0.5 0.5 0.46]);
picturedimage=imread('LEGO.jpg');
image(picturedimage)
set(h_picture,'handlevisibility','off','visible','off');
