function h = preallocateCycles(fileName, sheet, excludeCycles, excludeRows, includeRest)
%% Description: getCapacityVoltage, but faster!
[num, txt, raw] = xlsread(fileName, sheet);
[M, N] = size(raw); % obtain dimensions for the data sheet
store_data = cell(M, 2);
% store_data is more space than needed, but that's okay. All the empty
% values that are not assigned are going to be ignored. 
raw_rowInd = 1; 
firstCol = num(:,1); 
cycles = num (:, 1); % vector of cycle IDs
maxColLength = size(cycles, 1);
cycleIDind = find(cycles == cycles, maxColLength); % rows in NUM that indicate the start of a cycle
cycleIDind = cycleIDind + 3; % ADJUSTMENT rows in RAW that indicate start of a cycle
    
cycleIDs = cycles;
    
allNaN = find(isnan(cycleIDs));
cycleIDs(allNaN) = [];

function h = getCycleData(

