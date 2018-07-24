ori_path = '\\hi-z0dpe\CV-008_Students\wan4hi\Semantic_Segmentation\Test_SAIVT\jpeg_file';
target_path = '\\hi-z0dpe\CV-008_Students\wan4hi\Semantic_Segmentation\Test_SAIVT\jpg_file\';

reorder_tag = 1;
new_type = '.png';

img_file = dir(strcat(ori_path,'\*.jpeg'));
fnum_pos = regexp(img_file(1).name,'\d+.jpeg');
po_pos = regexp(img_file(1).name,'\.jpeg');
fa_num = str2double(img_file(1).name(fnum_pos:po_pos-1));

cd(ori_path)
for i = 1:length(img_file)
    I = imread(img_file(i).name);
    if reorder_tag == 1
        fnum_pos = regexp(img_file(i).name,'\d+.jpeg');
        po_pos = regexp(img_file(i).name,'\.jpeg');
        f_num = str2double(img_file(i).name(fnum_pos:po_pos-1));
        img_file(i).name = strcat(img_file(i).name(1:fnum_pos-1), int2str(f_num - fa_num + 1), '.jpeg');
    end
    new_name = strrep(img_file(i).name,'.jpeg',new_type);
    imwrite(I,strcat(target_path,new_name));
end