function draw_lines(str)
%global x0 y0 flag; % �w�q�����ܼ�
switch str
    case 'down'
        current_pt = get(gca,'CurrentPoint'); % get mouse's position
        x0 = current_pt(1,1); % �����ƹ���Ъ� x �y��
        y0 = current_pt(1,2); % �����ƹ���Ъ� y �y��
        set(gcf,'WindowButtonDownFcn','somenew')
        %flag = 1; % �]�w�����ܼư_�l��
    case 'up'
        flag = 0;
    case 'close'
        close;
end