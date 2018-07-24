folder_path = '\\hi2crsmb\external\wan4hi\Daten\AEON_SingleShotFB';
dir_info = dir(strcat(folder_path,'\*.png'));
mkdir(strcat(folder_path,'\cam1'));
mkdir(strcat(folder_path,'\cam2'));
mkdir(strcat(folder_path,'\cam3'));

for i = 1:length(dir_info)
    cam_idx = strsplit(dir_info(i).name,{'_','.'});
    cam_idx = str2double(cam_idx(end-1));
    movefile(strcat(folder_path,'\',dir_info(i).name),strcat(folder_path,'\cam',int2str(cam_idx+1),'\',dir_info(i).name));
end
    