folder_path = '\\hi2crsmb\external\wan4hi\Daten\AEON_SingleShotFB';
num_trial = 6;

%% random side and random cam (uncomment if you use the code)-Trial 1-5
% for i = 2:num_trial
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i))));
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),'Gallery_Test'));
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),'Probe_Test'));
%     
%     rng;
%     cam_idx = randperm(3,2);
%     gal_dir = dir(strcat(folder_path,'\cam',int2str(cam_idx(1)),'\*.png'));
%     for j = 1:2:length(gal_dir)
%         rng;
%         side_idx = fix(rand*2);
%         ori_img_path = strcat(folder_path,'\cam',int2str(cam_idx(1)),'\',gal_dir(j+side_idx).name);
%         new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Gallery_Test\',gal_dir(j+side_idx).name);
%         copyfile(ori_img_path, new_img_path);
%     end
%     
%     pro_dir = dir(strcat(folder_path,'\cam',int2str(cam_idx(2)),'\*.png'));
%     for j = 1:2:length(pro_dir)
%         rng;
%         side_idx = fix(rand*2);
%         ori_img_path = strcat(folder_path,'\cam',int2str(cam_idx(2)),'\',pro_dir(j+side_idx).name);
%         new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Probe_Test\',pro_dir(j+side_idx).name);
%         copyfile(ori_img_path, new_img_path);
%     end
%     disp(['Trial ',int2str(i),' is generated']);
% end

%% random side and all combination of cam- Trial 6-11
% cam_comb = perms([1 2 3]);
% for i = 7:5 + num_trial % change the index of trial
%     cam_idx = cam_comb(i-5, 1:2);
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i))));
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),strcat('cam',int2str(cam_idx(1)),'_Gallery_Test')));
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),strcat('cam',int2str(cam_idx(2)),'_Probe_Test')));
%     
%     
%     gal_dir = dir(strcat(folder_path,'\cam',int2str(cam_idx(1)),'\*.png'));
%     for j = 1:2:length(gal_dir)
%         rng;
%         side_idx = fix(rand*2);
%         ori_img_path = strcat(folder_path,'\cam',int2str(cam_idx(1)),'\',gal_dir(j+side_idx).name);
%         new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\cam',int2str(cam_idx(1)),'_Gallery_Test\',gal_dir(j+side_idx).name);
%         copyfile(ori_img_path, new_img_path);
%     end
%     
%     pro_dir = dir(strcat(folder_path,'\cam',int2str(cam_idx(2)),'\*.png'));
%     for j = 1:2:length(pro_dir)
%         rng;
%         side_idx = fix(rand*2);
%         ori_img_path = strcat(folder_path,'\cam',int2str(cam_idx(2)),'\',pro_dir(j+side_idx).name);
%         new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\cam',int2str(cam_idx(2)),'_Probe_Test\',pro_dir(j+side_idx).name);
%         copyfile(ori_img_path, new_img_path);
%     end
%     disp(['Trial ',int2str(i),' is generated']);
% end

%% multishot and random cam - Trial 12-15
% for i = 12:11+num_trial
%     rng;
%     cam_idx = randperm(3,2);
%     
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i))));
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),strcat('Multiview_cam',int2str(cam_idx(1)),'_Gallery_Test')));
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),strcat('Multiview_cam',int2str(cam_idx(2)),'_Probe_Test')));
%     
%     
%     gal_dir = dir(strcat(folder_path,'\cam',int2str(cam_idx(1)),'\*.png'));
%     for j = 1:2:length(gal_dir)
%         rng;
%         loop_num = fix(rand*2);
%         if (loop_num == 0)           
%             rng;
%             side_idx = fix(rand*2);
%             ori_img_path = strcat(folder_path,'\cam',int2str(cam_idx(1)),'\',gal_dir(j+side_idx).name);
%             new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Multiview_cam',int2str(cam_idx(1)),'_Gallery_Test\',gal_dir(j+side_idx).name);
%             copyfile(ori_img_path, new_img_path);
%         else
%             for side_idx = 0:loop_num
%                 ori_img_path = strcat(folder_path,'\cam',int2str(cam_idx(1)),'\',gal_dir(j+side_idx).name);
%                 new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Multiview_cam',int2str(cam_idx(1)),'_Gallery_Test\',gal_dir(j+side_idx).name);
%                 copyfile(ori_img_path, new_img_path);
%             end
%         end
%     end
%     
%     pro_dir = dir(strcat(folder_path,'\cam',int2str(cam_idx(2)),'\*.png'));
%     for j = 1:2:length(pro_dir)
%         rng;
%         loop_num = fix(rand*2);
%         if (loop_num == 0) 
%             rng;
%             side_idx = fix(rand*2);
%             ori_img_path = strcat(folder_path,'\cam',int2str(cam_idx(2)),'\',pro_dir(j+side_idx).name);
%             new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Multiview_cam',int2str(cam_idx(2)),'_Probe_Test\',pro_dir(j+side_idx).name);
%             copyfile(ori_img_path, new_img_path);
%         else
%             for side_idx = 0:loop_num
%                 ori_img_path = strcat(folder_path,'\cam',int2str(cam_idx(2)),'\',pro_dir(j+side_idx).name);
%                 new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Multiview_cam',int2str(cam_idx(2)),'_Probe_Test\',pro_dir(j+side_idx).name);
%                 copyfile(ori_img_path, new_img_path);
%             end
%         end
%     end
%     disp(['Trial ',int2str(i),' is generated']);
% end

%% multishot and all images - Trial 16-21
cam_komb = perms([1 2 3]);
for i = 16:15+num_trial
    cam_idx = cam_komb(i-15, 1:2);
    
    mkdir(fullfile(folder_path,strcat('Trial_',int2str(i))));
    mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),strcat('Multishot_cam',int2str(cam_idx(1)),'_Gallery_Test')));
    mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),strcat('Multishot_cam',int2str(cam_idx(2)),'_Probe_Test')));
    
    
    gal_dir = dir(strcat(folder_path,'\cam',int2str(cam_idx(1)),'\*.png'));
    for j = 1:length(gal_dir)
        ori_img_path = strcat(folder_path,'\cam',int2str(cam_idx(1)),'\',gal_dir(j).name);
        new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Multishot_cam',int2str(cam_idx(1)),'_Gallery_Test\',gal_dir(j).name);
        copyfile(ori_img_path, new_img_path);
    end
    
    pro_dir = dir(strcat(folder_path,'\cam',int2str(cam_idx(2)),'\*.png'));
    for j = 1:length(pro_dir)
        ori_img_path = strcat(folder_path,'\cam',int2str(cam_idx(2)),'\',pro_dir(j).name);
        new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Multishot_cam',int2str(cam_idx(2)),'_Probe_Test\',pro_dir(j).name);
        copyfile(ori_img_path, new_img_path);
    end
    disp(['Trial ',int2str(i),' is generated']);
end