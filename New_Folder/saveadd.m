% save the addlist into the database
if get(h_save,'value')==1
    new = get(addlist,'string');
    fid = fopen('alltext.txt','w');
    for ii = 1:length(new)
        fprintf(fid,'%s\n',new{ii,1});
    end
    close
end
fclose(fid);
clear tscan
tscan = textread('alltext.txt','%s','delimiter','');
text = get(h_edit,'string');
comp = strfind(tscan,text);
x = find(cellfun(@isempty,comp)==0);
str = [tscan(x,:)];
set(h_list,'String',str);