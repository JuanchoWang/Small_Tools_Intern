folder_path = '\\hi-z0dpe\CV-008_Students\wan4hi\PN_GAN-master\dataset';
t_list = importdata('\\hi-z0dpe\CV-008_Students\wan4hi\PN_GAN-master\script\test_idx.txt');
num_trial = 2;

%%
% for i = 2:num_trial
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i))));
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),'Gallery_Test'));
%     mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),'Probe_Test'));
%     
%     f_dir = dir(strcat(folder_path,'\cam_a\*.png'));
%     t_idx = 1;
%     for img_idx = 1:8:length(f_dir)
%         if (img_idx-1)/8 == t_list(t_idx)
%             rng;
%             cam_idx = randperm(8,2);
%             gal_name = f_dir(img_idx + cam_idx(1) -1).name;
%             pro_name = f_dir(img_idx + cam_idx(2) -1).name;
%             
%             ori_img_path = strcat(folder_path,'\cam_a\',gal_name);
%             new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Gallery_Test\',gal_name);
%             copyfile(ori_img_path, new_img_path);
%             ori_img_path = strcat(folder_path,'\cam_a\',pro_name);
%             new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Probe_Test\',pro_name);
%             copyfile(ori_img_path, new_img_path);
%             
%             t_idx = t_idx + 1;
%         end
%         if t_idx == length(t_list)
%             break
%         end
%     end      
% end
%%
for i = 2:num_trial
    mkdir(fullfile(folder_path,strcat('Trial_',int2str(i))));
    mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),'Gallery_Test'));
    mkdir(fullfile(folder_path,strcat('Trial_',int2str(i)),'Probe_Test'));
    
    g_dir = dir(strcat(folder_path,'\cam_a\*.png'));
    p_dir = dir(strcat(folder_path,'\cam_b\*.png'));
    t_idx = 1;
    for img_idx = 1:8:length(g_dir)
        if (img_idx-1)/8 == t_list(t_idx)
            rng;
            cam_idx = randperm(8,2);
            gal_name = g_dir(img_idx + cam_idx(1) -1).name;
            pro_name = p_dir(img_idx + cam_idx(2) -1).name;
            
            ori_img_path = strcat(folder_path,'\cam_a\',gal_name);
            new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Gallery_Test\',gal_name);
            copyfile(ori_img_path, new_img_path);
            ori_img_path = strcat(folder_path,'\cam_b\',pro_name);
            new_img_path = strcat(folder_path,'\Trial_',int2str(i),'\Probe_Test\',pro_name);
            copyfile(ori_img_path, new_img_path);
            
            t_idx = t_idx + 1;
        end
        if t_idx == length(t_list)
            break
        end
    end      
end