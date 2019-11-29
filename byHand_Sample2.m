%% Purpose: for cross-reference
% By hand indicates that I had gone through the spreadsheet and plotted two
% charge/discharge cycles by inputting their row and column numbers
% directly into MATLAB. Incredibly frustrating. 
data=xlsread('Sample_2_cycles.xlsx');
% IMPORTANT!: freezing first three rows offsets indexing by 3
%%%% Charging %%%%%%%%%%%%%%%%%
%% RepeatThis
% P_C = data (,5);
% C_C = data (,8);
% pc =plot (C_C, P_C,'bo',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on

%%%%% CHARGING %%%%%%%
%% Cycle 1
% P_C1 = data ((8-3):(644-3),5);
% C_C1 = data ((8-3):(644-3),8);
% pc1=plot (C_C1, P_C1,'bo',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on

%% Cycle 2
P_C2 = data (6-3:327-3,5);
C_C2 = data (6-3:327- 3,8);
pc2=plot (C_C2, P_C2,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 3
P_C3 = data (731 - 3:1040- 3,5);
C_C3 = data (731- 3:1040- 3,8);
pc3=plot (C_C3, P_C3,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%%%%%% DISCHARGING %%%%%%%%
%% RepeatThis
% P_R = data (,5);
% C_R = data (,8);
% pr =plot (C_R, P_R,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 
% P_D = data (,5);
% C_D = data (,8);
% pd =plot (C_D, P_D,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on
%% Cycle 1 always exlude first cycle data
% P_R1 = data (656 - 3:672 - 3,5);
% C_R1 = data (656 - 3:672 - 3,8);
% pr1 =plot (C_R1, P_R1,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 
% P_D1 = data (674 - 3:1047 - 3,5);
% C_D1 = data (674 - 3:1047 - 3,8);
% pd1 =plot (C_D1, P_D1,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on

%% Cycle 2
P_R2_1 = data (329 - 3:345- 3,5);
C_R2_1 = data (329 - 3:345 - 3,8);
pr2_1 =plot (C_R2_1, P_R2_1,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D2 = data (347 - 3:676 - 3,5);
C_D2 = data (347 - 3:676 - 3,8);
pd2 =plot (C_D2, P_D2,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_R2_2 = data (678 - 3:726 - 3, 5);
C_R2_2 = data (678 - 3:726 - 3, 8);
pr2_2 = plot(C_R2_2, P_R2_2, 'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 3
P_R3_1 = data (1042 - 3:1058 - 3,5);
C_R3_1 = data (1042 - 3:1058 - 3,8);
pr3_1 =plot (C_R3_1, P_R3_1,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D3 = data (1060 - 3:1377 - 3,5);
C_D3 = data (1060 - 3:1377 - 3,8);
pd3 =plot (C_D3, P_D3,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_R3_2 = data (1379 - 3:1429 - 3,5);
C_R3_2 = data (1379 - 3:1429 - 3,8);
pr3_2 =plot (C_R3_2, P_R3_2,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Graph %%%%%%%%%%%%%%%%%%%%
ylabel ('Potential','FontSize',20, 'FontWeight','bold');
xlabel ('Capacity','FontSize',20,'FontWeight','bold');
a = get(gca,'XTickLabel');
set(gca,'XTickLabel',a,'fontsize',16)
set(gcf,'color','white')
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9]);
yticks([3 3.2 3.4 3.6 3.8 4.0 4.2 4.4]);