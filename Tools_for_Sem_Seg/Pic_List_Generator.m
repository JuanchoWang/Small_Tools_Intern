pic_path = '\\hi-z0dpe\CV-008_Students\wan4hi\Semantic_Segmentation\Test_Snapshots_2';
target_path = strrep(pic_path,'\','/');
target_path = target_path(2:end);
target_path = strrep(target_path,'hi-z0dpe','mnt/Projects');
pic_type = '.png';
pic_info = dir(strcat(pic_path, '\*', pic_type));
pt = strfind(pic_path, '_');
txt_name = strcat(pic_path(pt(end)+1:end), '_list.txt');
cd(pic_path);
txt = fopen(txt_name,'wt');
for i = 1:length(pic_info)
    fprintf(txt,strcat(target_path,'/',pic_info(i).name,'\n'));
end
fclose(txt);