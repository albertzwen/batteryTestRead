data=xlsread('Sample_27_Cycles.xlsx');
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
P_C2 = data (1104-3:1425-3,5);
C_C2 = data (1104-3:1425 - 3,8);
pc2=plot (C_C2, P_C2,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 3
P_C3 = data (1829 - 3:2138 - 3,5);
C_C3 = data (1829 - 3:2138 - 3,8);
pc3=plot (C_C3, P_C3,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 4
P_C4 = data (2532 - 3:2826 - 3,5);
C_C4 = data (2532 - 3:2826 - 3,8);
pc4 =plot (C_C4, P_C4,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 5
P_C5 = data (3209 - 3:3500 - 3,5);
C_C5 = data (3209 - 3:3500 - 3,8);
pc5=plot (C_C5, P_C5,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 6
P_C6 = data (3798 - 3:3799 - 3,5);
C_C6 = data (3798 - 3:3799 - 3,8);
pc6 =plot (C_C6, P_C6,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 7
P_C7 = data (3825 - 3:4087 - 3, 5);
C_C7 = data (3825 - 3:4087 - 3,8);
pc7 =plot (C_C7, P_C7,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 8
P_C8 = data (4483 - 3:4795 - 3,5);
C_C8 = data (4483 - 3:4795 - 3,8);
pc8=plot (C_C8, P_C8,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 9
P_C9 = data (5186 - 3:5488 - 3,5);
C_C9 = data (5186 - 3:5488 - 3,8);
pc9 =plot (C_C9, P_C9,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 10
P_C10 = data (5883 - 3:6193 - 3,5);
C_C10 = data (5883 - 3:6193 - 3,8);
pc10=plot (C_C10, P_C10,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 11
P_C11 = data (6588 - 3:6903 - 3,5);
C_C11 = data (6588 - 3:6903 - 3,8);
pc11=plot (C_C11, P_C11,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 12
P_C12= data (7304 - 3:7625 - 3,5);
C_C12 = data (7304 - 3:7625 - 3,8);
pc12=plot (C_C12, P_C12,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 13
P_C13 = data (8032 - 3:8354 - 3,5);
C_C13 = data (8032 - 3:8354 - 3,8);
pc13=plot (C_C13, P_C13,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 14
P_C14 = data (8752 - 3:9075 - 3,5);
C_C14 = data (8752 - 3:9075 - 3,8);
pc14=plot (C_C14, P_C14,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 15
P_C15= data (9477 - 3:9794 - 3,5);
C_C15 = data (9477 - 3:9794 - 3,8);
pc15=plot (C_C15, P_C15,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 16
P_C16 = data (10186 - 3:10494 - 3,5);
C_C16 = data (10186 - 3:10494 - 3,8);
pc16=plot (C_C16, P_C16,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 17
P_C17 = data (10877 - 3:11183 - 3,5);
C_C17 = data (10877 - 3:11183 - 3,8);
pc17=plot (C_C17, P_C17,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 18
P_C18 = data (11558 - 3:11850 - 3,5);
C_C18 = data (11558 - 3:11850 - 3,8);
pc18=plot (C_C18, P_C18,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 19
P_C19 = data (12217 - 3:12517 - 3,5);
C_C19 = data (12217 - 3:12517 - 3,8);
pc19=plot (C_C19, P_C19,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 20 
P_C20 = data (12887 - 3:13181 - 3,5);
C_C20 = data (12887 - 3:13181 - 3,8);
pc20=plot (C_C20, P_C20,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 21
P_C21 = data (13543 - 3:13835 - 3,5);
C_C21 = data (13543 - 3:13835 - 3,8);
pc21=plot (C_C21, P_C21,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 22
P_C22 = data (14198 - 3:14491 - 3,5);
C_C22 = data (14198 - 3:14491 - 3,8);
pc22=plot (C_C22, P_C22,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 23
P_C23 = data (14852  - 3:15142 - 3,5);
C_C23 = data (14852 - 3:15142 - 3,8);
pc23=plot (C_C23, P_C23,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 24
P_C24 = data (15503 - 3:15804 - 3,5);
C_C24 = data (15503 - 3:15804 - 3,8);
pc24=plot (C_C24, P_C24,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 25
P_C25 = data (16170 - 3:16458 - 3,5);
C_C25 = data (16170 - 3:16458 - 3,8);
pc25=plot (C_C25, P_C25,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 26
P_C26 = data (16810 - 3:17097 - 3,5);
C_C26 = data (16810 - 3:17097 - 3,8);
pc26=plot (C_C26, P_C26,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 27
P_C27 = data (17454 - 3:17739 - 3,5);
C_C27 = data (17454 - 3:17739 - 3,8);
pc27=plot (C_C27, P_C27,'bo',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% DISCHARGING %%%%%%%%
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
%% Cycle 1 
P_R1 = data (656 - 3:672 - 3,5);
C_R1 = data (656 - 3:672 - 3,8);
pr1 =plot (C_R1, P_R1,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D1 = data (674 - 3:1047 - 3,5);
C_D1 = data (674 - 3:1047 - 3,8);
pd1 =plot (C_D1, P_D1,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 2
P_R2_1 = data (1427 - 3:1443 - 3,5);
C_R2_1 = data (1427 - 3:1443 - 3,8);
pr2_1 =plot (C_R2_1, P_R2_1,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D2 = data (1445 - 3:1774 - 3,5);
C_D2 = data (1445 - 3:1774 - 3,8);
pd2 =plot (C_D2, P_D2,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R2_2 = data (1776 - 3:1824 - 3, 5);
% C_R2_2 = data (1776 - 3:1824 - 3, 8);
% pr2_2 = plot(C_R2_2, P_R2_2, 'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on

%% Cycle 3
P_R3_1 = data (2140 - 3:2156 - 3,5);
C_R3_1 = data (2140 - 3:2156 - 3,8);
pr3_1 =plot (C_R3_1, P_R3_1,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D3 = data (2158 - 3:2475 - 3,5);
C_D3 = data (2158 - 3:2475 - 3,8);
pd3 =plot (C_D3, P_D3,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R3_2 = data (2477 - 3:2527 - 3,5);
% C_R3_2 = data (2477 - 3:2527 - 3,8);
% pr3_2 =plot (C_R3_2, P_R3_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on

%% Cycle 4 
P_R4_1 = data (2828 - 3:2844 - 3,5);
C_R4_1 = data (2828 - 3:2844 - 3,8);
pr4_1 =plot (C_R4_1, P_R4_1,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D4 = data (2846 - 3:3153 - 3,5);
C_D4 = data (2846 - 3:3153 - 3,8);
pd4 =plot (C_D4, P_D4,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R4_2 = data (3155 - 3:3204 - 3,5);
% C_R4_2 = data (3155 - 3:3204 - 3,8);
% pr4_2 =plot (C_R4_2, P_R4_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on
%% Cycle 5
P_R5_1 = data (3502 - 3:3518 - 3 ,5);
C_R5_1 = data (3502 - 3:3518 - 3,8);
pr5_1 =plot (C_R5_1, P_R5_1,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D5 = data (3520 - 3:3773 - 3,5);
C_D5 = data (3520 - 3:3773 - 3,8);
% C_D5(C_D5 == 0.412) = NaN;
% P_D5(P_D5 == -0.0195) = NaN;
pd5 =plot (C_D5, P_D5,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R5_2 = data (3775 - 3:3795 - 3 ,5);
% C_R5_2 = data (3775 - 3:3795 - 3,8);
% pr5_2 =plot (C_R5_2, P_R5_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on

%% Cycle 6 Problematic
P_R6 = data (3801 - 3:3818 - 3,5);
C_R6 = data (3801 - 3:3818 - 3,8);
pr6 =plot (C_R6, P_R6,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D6 = data (3820 - 3,5);
C_D6 = data (3820 - 3,8);
pd6 =plot (C_D6, P_D6,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on

%% Cycle 7
P_R7 = data (4089 - 3:4105 - 3,5);
C_R7 = data (4089 - 3:4105 - 3,8);
pr7 =plot (C_R7, P_R7,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D7 = data (4107 - 3:4428 - 3,5);
C_D7 = data (4107 - 3:4428 - 3,8);
pd7 =plot (C_D7, P_D7,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R7_2 = data (4431 - 3:4480 - 3,5);
% C_R7_2 = data (4431 - 3:4480 - 3,8);
% pr7_2 =plot (C_R7_2, P_R7_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 
%% Cycle 8
P_R8 = data (4797 - 3:4813 - 3,5);
C_R8 = data (4797 - 3:4813 - 3,8);
pr8 =plot (C_R8, P_R8,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D8 = data (4815 - 3:5132 - 3,5);
C_D8 = data (4815 - 3:5132 - 3,8);
pd8 =plot (C_D8, P_D8,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R8_2 = data (5134- 3:5183 - 3,5);
% C_R8_2 = data (5134 - 3:5183 - 3,8);
% pr8_2 =plot (C_R8_2, P_R8_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on
%% Cycle 9 
P_R9 = data (5490 - 3:5506 - 3,5);
C_R9 = data (5490 - 3:5506 - 3,8);
pr9 =plot (C_R9, P_R9,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D9 = data (5508 - 3:5829 - 3, 5);
C_D9 = data (5508 - 3:5829 - 3, 8);
pd9 =plot (C_D9, P_D9,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R9_2 = data (5831 - 3:5880- 3, 5);
% C_R9_2 = data (5831 - 3:5880- 3, 8);
% pr9_2 =plot (C_R9_2, P_R9_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on

%% Cycle 10
P_R10 = data (6195 - 3:6211- 3,5);
C_R10 = data (6195 - 3:6211 - 3,8);
pr10 =plot (C_R10, P_R10,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D10 = data (6213 - 3:6536 - 3,5);
C_D10 = data (6213 - 3:6536 - 3,8);
pd =plot (C_D10, P_D10,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R10_2 = data (6538 - 3:6585 - 3,5);
% C_R10_2 = data (6538 - 3:6585 - 3,8);
% pr10_2 =plot (C_R10_2, P_R10_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on

%% Cycle 11 
P_R11 = data (6905 - 3:6921 - 3,5);
C_R11 = data (6905 - 3:6921 - 3,8);
pr11 =plot (C_R11, P_R11,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D11 = data (6923 - 3:7251 - 3,5);
C_D11 = data (6923 - 3:7251 - 3,8);
pd11 =plot (C_D11, P_D11,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R11_2 = data (7253 - 3:7301 - 3,5);
% C_R11_2 = data (7253 - 3:7301 - 3,8);
% pr11_2 =plot (C_R11_2, P_R11_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on
%% Cycle 12 Problematic Set
P_R12 = data (7627 - 3:7643 - 3,5);
C_R12 = data (7627 - 3:7643 - 3,8);
pr12 =plot (C_R12, P_R12,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D12 = data (7645 - 3:7980 - 3,5);
C_D12 = data (7645 - 3:7980 - 3,8);
pd12 =plot (C_D12, P_D12,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R12_2 = data (7982 - 3:8029- 3,5);
% C_R12_2 = data (7982 - 3:8029 - 3,8);
% pr12_2 =plot (C_R12_2, P_R12_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on

%% Cycle 13 
P_R13 = data (8356 - 3:8372 - 3,5);
C_R13 = data (8356 - 3:8372 - 3, 8);
pr13 =plot (C_R13, P_R13,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
P_D13 = data (8374 - 3:8700 - 3,5);
C_D13 = data (8374 - 3:8700 - 3,8);
pd13 =plot (C_D13, P_D13,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R13_2 = data (8702 - 3:8749 - 3,5);
% C_R13_2 = data (8702 - 3:8749 - 3, 8);
% pr13_2 =plot (C_R13_2, P_R13_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on

%% Cycle 14
P_R14 = data (9077 - 3:9093 - 3,5);
C_R14 = data (9077 - 3: 9093 - 3,8);
pr14 =plot (C_R14, P_R14,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D14 = data (9095 - 3 :9426 - 3,5);
C_D14 = data (9095 - 3:9426 - 3,8);
pd14 =plot (C_D14, P_D14,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R14_2 = data (9428 - 3:9474 - 3,5);
% C_R14_2 = data (9428 - 3:9474 - 3,8);
% pr14_2 =plot (C_R14_2, P_R14_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 15
P_R15 = data (9796 - 3:9812 - 3,5);
C_R15 = data (9796 - 3:9812 - 3, 8);
pr15 =plot (C_R15, P_R15,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D15 = data (9814 - 3:10134 - 3,5);
C_D15 = data (9814 - 3:10134 - 3,8);
pd15 =plot (C_D15, P_D15,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R15_2 = data (10136 - 3:10183 - 3,5);
% C_R15_2 = data (10136 - 3:10183 - 3, 8);
% pr15_2 =plot (C_R15_2, P_R15_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 16
P_R16 = data (10496 - 3:10512 - 3,5);
C_R16 = data (10496 - 3:10512 - 3,8);
pr16 =plot (C_R16, P_R16,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D16 = data (10514 - 3:10826 - 3,5); 
C_D16 = data (10514 - 3:10826 - 3,8);
pd16 =plot (C_D16, P_D16,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R16_2 = data (10828 - 3:10874- 3,5);
% C_R16_2 = data (10828 - 3:10874- 3,8);
% pr16_2 =plot (C_R16_2, P_R16_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 17
P_R17 = data (11185 - 3:11201 - 3,5);
C_R17 = data (11185 - 3:11201 - 3,8);
pr17 =plot (C_R17, P_R17,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D17 = data (11203 - 3:11505 - 3,5);
C_D17 = data (11203 - 3:11505 - 3,8);
pd17 =plot (C_D17, P_D17,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R17_2 = data (11506 - 3:11555 - 3,5);
% C_R17_2 = data (11506 - 3:11555 - 3,8);
% pr17_2 =plot (C_R17_2, P_R17_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 18
P_R18 = data (11852 - 3:11868 - 3,5);
C_R18 = data (11852 - 3:11868 - 3,8);
pr18 =plot (C_R18, P_R18,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D18 = data (11870 - 3:12165 - 3,5);
C_D18 = data (11870 - 3:12165 - 3,8);
pd18 =plot (C_D18, P_D18,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R18_2 = data (11852 - 3:11868 - 3,5);
% C_R18_2 = data (11852 - 3:11868 - 3,8);
% pr18_2 =plot (C_R18_2, P_R18_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 19 
P_R19 = data (12519 - 3:12535 - 3,5);
C_R19 = data (12519 - 3:12535 - 3,8);
pr19 =plot (C_R19, P_R19,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D19 = data (12537 - 3:12834 - 3,5);
C_D19 = data (12537 - 3:12834 - 3,8);
pd19 =plot (C_D19, P_D19,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R19_2 = data (12836 - 3:12844 - 3,5);
% C_R19_2 = data (12836 - 3:12844 - 3,8);
% pr19_2 =plot (C_R19_2, P_R19_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 20
P_R20 = data (13183 - 3:13199 - 3,5);
C_R20 = data (13183 - 3:13199 - 3,8);
pr20 =plot (C_R20, P_R20,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D20 = data (13201 - 3:13492 - 3,5);
C_D20 = data (13201 - 3:13492 - 3,8);
pd20 =plot (C_D20, P_D20,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R20_2 = data (13494 - 3:13510 - 3,5);
% C_R20_2 = data (13494 - 3:13510 - 3,8);
% pr20_2 =plot (C_R20_2, P_R20_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 21
P_R21 = data (13837 - 3:13853 - 3,5);
C_R21 = data (13837 - 3:13853 - 3,8);
pr21 =plot (C_R21, P_R21,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D21 = data (13855 - 3:14148 - 3,5);
C_D21 = data (13855 - 3:14148  -3,8);
pd21 =plot (C_D21, P_D21,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R21_2 = data (14150 - 3:14195 - 3,5);
% C_R21_2 = data (14150 - 3:14195 - 3,8);
% pr21_2 =plot (C_R21_2, P_R21_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 22
P_R22 = data (14493 - 3:14509  - 3,5);
C_R22 = data (14493 - 3:14509 - 3,8);
pr22 =plot (C_R22, P_R22,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D22 = data (14511 - 3:14801 - 3,5);
C_D22 = data (14511 - 3:14801 - 3,8);
pd22 =plot (C_D22, P_D22,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R22_2 = data (14803 - 3:14849  - 3,5);
% C_R22_2 = data (14803 - 3:14849 - 3,8);
% pr22_2 =plot (C_R22_2, P_R22_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 23
P_R23 = data (15144 - 3:15160 - 3,5);
C_R23 = data (15144 - 3:15160 - 3,8);
pr23 =plot (C_R23, P_R23,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D23 = data (15162 - 3:15455 - 3,5);
C_D23 = data (15162 - 3:15455 - 3,8) ;
pd23 =plot (C_D23, P_D23,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R23_2= data (15457 - 3:15500 - 3,5);
% C_R23_2 = data (15457 - 3:15500 - 3,8);
% pr23_2 =plot (C_R23_2, P_R23_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 24
P_R24 = data (15806 - 3:15822 - 3,5);
C_R24 = data (15806 - 3:15822 - 3,8);
pr24 =plot (C_R24, P_R24,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D24 = data (15824 - 3:16120 - 3,5);
C_D24 = data (15824 - 3:16120 - 3,8);
pd24 =plot (C_D24, P_D24,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R24_2 = data (16122 - 3:16167 - 3,5);
% C_R24_2 = data (16122 - 3:16167- 3,8);
% pr24_2 =plot (C_R24_2, P_R24_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 


%% Cycle 25
P_R25 = data (16460 - 3:16476 - 3,5);
C_R25 = data (16460 - 3:16476 - 3,8);
pr25 =plot (C_R25, P_R25,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D25 = data (16578 - 3:16762 - 3,5);
C_D25 = data (16578 - 3:16762 - 3,8);
pd25=plot (C_D25, P_D25,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R25_2 = data (16764 - 3:16807 - 3,5);
% C_R25_2 = data (16764 - 3:16807 - 3,8);
% pr25_2 =plot (C_R25_2, P_R25_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 26
P_R26 = data (17099 - 3:17115 - 3,5);
C_R26 = data (17099 - 3:17115 - 3,8);
pr26 =plot (C_R26, P_R26,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D26 = data (17117 - 3:17406 - 3,5);
C_D26 = data (17117 - 3:17406 - 3,8);
pd26 =plot (C_D26, P_D26,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R26_2 = data (17408- 3:17451 - 3,5);
% C_R26_2 = data (17408 - 3:17451 - 3,8);
% pr26_2 =plot (C_R26_2, P_R26_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Cycle 27
P_R27 = data (17741 - 3:17757 - 3,5);
C_R27 = data (17741 - 3:17757 - 3,8);
pr27 =plot (C_R27, P_R27,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on 
P_D27 = data (17759 - 3:18038 - 3,5);
C_D27 = data (17759 - 3:18038 - 3, 8);
pd27 =plot (C_D27, P_D27,'ro',...
'LineWidth',0.5,...
    'MarkerSize',10);
hold on
% P_R27_2 = data (18040 - 3:18083 - 3,5);
% C_R27_2 = data (18040 - 3:18083 - 3,8);
% pr27_2 =plot (C_R27_2, P_R27_2,'ro',...
% 'LineWidth',0.5,...
%     'MarkerSize',10);
% hold on 

%% Graph %%%%%%%%%%%%%%%%%%%%
ylabel ('Potential','FontSize',20, 'FontWeight','bold');
xlabel ('Capacity','FontSize',20,'FontWeight','bold');
a = get(gca,'XTickLabel');
set(gca,'XTickLabel',a,'fontsize',16)
set(gcf,'color','white')
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9]);
yticks([3 3.2 3.4 3.6 3.8 4.0 4.2 4.4]);