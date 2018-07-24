 clear all
 P = importdata('\\hi2crsmb\external\wan4hi\Daten\Data_only_for_code_test\3D_Pose_data\transformed_test01_real_270_480.txt');
 B = reshape(P',3,15,6);
i = 4;%Change picture index here before observing the pose
LiWi = 3;
figure(1)
plot3(B(1,[1 2],i),B(2,[1 2],i),B(3,[1 2],i),'LineWidth',LiWi);%Neck-Head1
hold(gca,'on')
axis equal
plot3(B(1,1,i),B(2,1,i),B(3,1,i),'o');%Point-Neck
plot3(B(1,[1 3],i),B(2,[1 3],i),B(3,[1 3],i),'LineWidth',LiWi);%Neck-Head2
plot3(B(1,[1 4],i),B(2,[1 4],i),B(3,[1 4],i),'LineWidth',LiWi);%Neck-Lsh
plot3(B(1,[1 11],i),B(2,[1 11],i),B(3,[1 11],i),'LineWidth',LiWi);%Neck-Rhip
plot3(B(1,[1 10],i),B(2,[1 10],i),B(3,[1 10],i),'LineWidth',LiWi);%Neck-Lhip
plot3(B(1,[5 7],i),B(2,[5 7],i),B(3,[5 7],i),'LineWidth',LiWi);%Rsh-Relb
plot3(B(1,[7 9],i),B(2,[7 9],i),B(3,[7 9],i),'LineWidth',LiWi);%Relb-Rwri
plot3(B(1,[1 5],i),B(2,[1 5],i),B(3,[1 5],i),'LineWidth',LiWi);%Neck-Rsh
plot3(B(1,[4 6],i),B(2,[4 6],i),B(3,[4 6],i),'LineWidth',LiWi);%Lsh-Lelb
plot3(B(1,[6 8],i),B(2,[6 8],i),B(3,[6 8],i),'LineWidth',LiWi);%Lelb-Lwri
plot3(B(1,[11 13],i),B(2,[11 13],i),B(3,[11 13],i),'LineWidth',LiWi);%Rhip-Rkne
plot3(B(1,[13 15],i),B(2,[13 15],i),B(3,[13 15],i),'LineWidth',LiWi);%Rkne-Rank
plot3(B(1,[10 12],i),B(2,[10 12],i),B(3,[10 12],i),'LineWidth',LiWi);%Lhip-Lkne
plot3(B(1,[12 14],i),B(2,[12 14],i),B(3,[12 14],i),'LineWidth',LiWi);%Lkne-Lank
%plot3(B(1,15,i),B(2,15,i),B(3,15,i),'x');%Point-center
hold off