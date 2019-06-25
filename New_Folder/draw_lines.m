function draw_lines(str)
%global x0 y0 flag; % ﹚竡办跑计
switch str
    case 'down'
        current_pt = get(gca,'CurrentPoint'); % get mouse's position
        x0 = current_pt(1,1); % 盎代菲公村夹 x 畒夹
        y0 = current_pt(1,2); % 盎代菲公村夹 y 畒夹
        set(gcf,'WindowButtonDownFcn','somenew')
        %flag = 1; % 砞﹚办跑计癬﹍
    case 'up'
        flag = 0;
    case 'close'
        close;
end