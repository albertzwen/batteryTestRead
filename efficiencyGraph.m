function graph = efficiencyGraph()
fileName = input('Which file do you want this script to read?\n\nInput the file name (quotation marks not necessary):   ', 's');
sheet = input('Which sheet do you want this script to read?\nPlease enter the sheet number\n\nInput your answer:   ');
excludeThese = input('Which cycles do you wish to exclude from the data?\nYou can also leave this part blank and press "ENTER"\n\nInput your answer as a vector:   ');
graph = getEfficiencyGraph(fileName, sheet, excludeThese);
end



function graph = getEfficiencyGraph(fileName, sheet, excludeThese)
%% Description: A function that will plot charge/discharge energies and efficiencies for various cycles

% Much of the logic that went into this script was also used in
% capacityVoltage.m, albeit much simpler to code overall. 

%% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% fileName = name of the .xls or .xlsx file containing data
%% sheet = name of sheet containing data at the start of every cycle
%  Make sure the file contains all the cycles intended to be plotted.
%% excludeThese = cycles to be left out of the graph
%% FILTERING 
    [num, txt, raw] = xlsread(fileName, sheet); 
    % NUM is typical double array with numbers only, RAW is cell array that
    % also includes text with no OFFSET
    cycles = num (:, 1); % vector of cycle IDs
    maxColLength = size(cycles, 1);
    cycleIDind = find(cycles == cycles, maxColLength); % rows in NUM that indicate the start of a cycle
    cycleIDind = cycleIDind + 3; % ADJUSTMENT rows in RAW that indicate start of a cycle
    % it is assumed the offset is by default 3. 
%     cycleIDs = cycles;
%     
%     allNaN = find(isnan(cycleIDs));
%     cycleIDs(allNaN) = [];

%% MAKING DATA POINTS
points = {}; 
% every point will have: {[cycleID, engy_chg, engy_dchg, efficiency]}; 
for k = 1:length(cycleIDind)
    cycleID = raw{cycleIDind(k), 1}; 
    engy_chg = raw{cycleIDind(k), 7};
    engy_dchg = raw{cycleIDind(k), 8};
    efficiency = raw{cycleIDind(k), 6}; 
    
    % if the efficiency doesn't make sense, exclude the data point.
%     plotThis = {zeros(1, 4)}; 
    if efficiency > 100.000
%         plotThis = {[nan nan nan nan]};
        continue;
    else 
        plotThis = {[cycleID engy_chg engy_dchg efficiency]}; 
    end
    points{size(points, 1) + 1, 1} = plotThis; 
end

%% GRAPHING 
cycleIDs = [];
allChgEngy = [];
allDchgEngy = [];
allEfficiency = []; 
for i = 1:length(points)
    cycle = points{i}{1};
    cycleIDs = [cycleIDs cycle(1)];
    allChgEngy = [allChgEngy cycle(2)];
    allDchgEngy = [allDchgEngy cycle(3)];
    allEfficiency = [allEfficiency cycle(4)];
end

outlier_chg_engy = isoutlier(allChgEngy);
outlier_dchg_engy = isoutlier(allDchgEngy);
for i = 1:length(excludeThese) 
    ind = cycleIDs(cycleIDs == excludeThese(i));
    cycleIDs(ind) = nan;
    allChgEngy(ind) = nan;
    allDchgEngy(ind) = nan;
    allEfficiency(ind) = nan;
end

allNaNcyc = find(isnan(cycleIDs));
cycleIDs(allNaNcyc) = [];
allNaNchg = find(isnan(allChgEngy)); 
allChgEngy(allNaNchg) = [];
allNaNdchg = find(isnan(allDchgEngy));
allDchgEngy(allNaNdchg) = [];
allNaNeff = find(isnan(allEfficiency));
allEfficiency(allNaNeff) = [];

% Additional Outlier point exclusion
% cycleIDs(outlier_chg_engy) = [];
% allChgEngy(outlier_chg_engy) = [];
% allDchgEngy(outlier_chg_engy) = [];
% allEfficiency(outlier_chg_engy) = [];
% 
% cycleIDs(outlier_dchg_engy) = [];
% allChgEngy(outlier_dchg_engy) = [];
% allDchgEngy(outlier_dchg_engy) = [];
% allEfficiency(outlier_dchg_engy) = [];

% plot energies first
yyaxis left
plot(cycleIDs, allChgEngy, 'o-', 'LineWidth', 2,...
    'MarkerSize', 8);
hold on
plot(cycleIDs, allDchgEngy, 'o--',...
    'LineWidth', 2,...
    'MarkerSize', 8);
hold on
ylabel('Capacity (mAh)','FontSize',20, 'FontWeight','bold');
xlabel ('Cycle','FontSize',20, 'FontWeight','bold');
% yticks(0.2:0.1:0.9);
hold on

% plot efficiency
yyaxis right
plot(cycleIDs, allEfficiency, '-o',...
'LineWidth', 2,...
    'MarkerSize',8);
ylabel ('Columbic Efficiency (%)', 'FontSize',20, 'FontWeight','bold');
% yticks(65:5:100);
hold on

a = get(gca,'XTickLabel');
set(gca,'XTickLabel',a,'fontsize',16)
set(gcf,'color','white')
% xticks(0:max(raw{:,1}));
legend('Charge', 'Discharge', 'Efficiency');

graph = gcf;
    