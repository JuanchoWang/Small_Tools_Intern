dir_path = '\\hi2crsmb\external\wan4hi\Daten\Semantic_Segmentation\Bounding_Box_Test\sem_seg_result\class_index';
pic_cell = dir(strcat(dir_path,'\*.png'));
for i = 4:length(pic_cell)
    I = imread(strcat(pic_cell(i).folder,'\',pic_cell(i).name));
    figure(i)
    J = double(I == 1);
    imshow(J,[]);
%     BW2 = bwselect;

    % uncomment the following lines if you want to view the BB
    st = regionprops(J, 'BoundingBox');
    for j = 1:length(st)
        rectangle(gca,'Position',st(j).BoundingBox,'EdgeColor','r','LineWidth',2);
    end
end