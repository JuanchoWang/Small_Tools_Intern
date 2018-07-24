clear
folder_path = uigetdir();
cd(folder_path);
mkdir('Resized_pics_4');
pic_list = dir(strcat(folder_path,'\Resized_pics\*.png'));% format
for i = 1:length(pic_list)
    I = imread(strcat(folder_path,'\Resized_pics\',pic_list(i).name));
    J = imresize(I, 0.25);%scale
    if i < 10
        new_name = strcat('00',int2str(i),'.png');
    else
        if i < 100
           new_name = strcat('0',int2str(i),'.png'); 
        else
            new_name = strcat(int2str(i),'.png');
        end
    end
    imwrite(J,strcat('Resized_pics_4\',new_name));
end

    