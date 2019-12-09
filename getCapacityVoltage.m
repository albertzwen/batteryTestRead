function h = getCapacityVoltage(fileName, sheet, excludeCycles, excludeRows, includeRest)
%% Description: a function that contributes data points of capacity and voltage
%% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% fileName = name of the spreadsheet/workbook you intend to input
%% sheet = name or number of the sheet you want to read. 
% If the workbook only contains one spreadsheet, either input the name of
% the sheet or 1. *** Do not leave this field blank! ***
% A valid input for this is the sheet number in the workbook
%% excludeThese = a vector/array of cycles that will not be included
% By default, the first cycle must be excluded because it will not look
% like the other cycles. 
% If no cycles are to be excluded, write []
%% excludeRows = rows that contain faulty data
%% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% h = cell array of M x 2 size
% first column will contain cells relating to charge
% second column will contain cells relating to discharge & rest
%% FILTERING 
    [num, txt, raw] = xlsread(fileName, sheet); 
    % NUM is typical double array with numbers only, RAW is cell array that
    % also includes text with no OFFSET
    cycles = num (:, 1); % vector of cycle IDs
    maxColLength = size(cycles, 1);
    cycleIDind = find(cycles == cycles, maxColLength); % rows in NUM that indicate the start of a cycle
    cycleIDind = cycleIDind + 3; % ADJUSTMENT rows in RAW that indicate start of a cycle
    
    cycleIDs = cycles;
    
    allNaN = find(isnan(cycleIDs));
    cycleIDs(allNaN) = [];
%     skipNum = 0;
%     for excludeThis = excludeCycles 
%         if any(ismember(cycleIDs, excludeThis))
%             skipNum = skipNum + 1;
%         end
%     end
%     numCycles = max(cycleIDs);
%     if numCycles - skipNum == 0
%         h = {}; 
%         return;
%     end
    
    
%% CONCATENATE DATA    
   counter = 1;
   starterCell = {};
   while counter < size(cycleIDs, 1) + 1
       thisCycle = cycleIDs(counter); 
       cycleStart = cycleIDind(counter);
       cycleData = getCycleData(thisCycle, cycleStart, excludeCycles, excludeRows, includeRest, raw);
       starterCell{size(starterCell,1) + 1, 1} =  cycleData;
       counter = counter + 1;
   end
   %% Delete all data for first charge cycle
   cyc1 = starterCell{1};
   cyc1_charge = cyc1{1};
   
   h = starterCell;
end

%% Subfunction
function cycleData = getCycleData(cycleID, cycleStart, excludeCycles, excludeRows, includeRest, raw)
%% Description: given an input cycle ID, will return capacity and voltage. Uses RAW data only.
%% INPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% cycleID = integer value of cycle
%% cycleIDind = row index of cycle to be evaluated, with offset included
%% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% cycleData = a cell array of size M x 2 containing 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% If cycle is excluded, immediately return control to invoking function
if size(excludeCycles, 2) > 0 
    inExcludeThese = ismember(excludeCycles, cycleID);
    if any(inExcludeThese) 
        cycleData = {{[NaN NaN]} {[NaN NaN]}};
        return;
    end 
end

%% Collecting Charge Data
rowInd = cycleStart;
% stillInChg = false; 
chgStart = 0; 
chgData = {};
while true
    if strcmp(raw{rowInd,3}, 'CC_Chg')
%         stillInChg = true;
        chgStart = rowInd;
        break;
    end
    rowInd = rowInd + 1; 
end

rowInd = chgStart + 1;
indEndCCHG = 0;
notImmediate = false; 
% restCounter = 0; 
endAll = length(raw(:,3));

if cycleID == 1 
    chgData{size(chgData,1) + 1, 1} = [NaN NaN];
    while true
        if strcmp(raw{rowInd, 3}, 'CC_DChg')
            rowInd = rowInd + 1;
            break;
        end
        rowInd = rowInd + 1;
    end
end

while cycleID ~= 1
    %% perform checks within spreadsheet position before adding data to array!
    if size(excludeRows, 2) > 0 
        inExcludeThese = ismember(excludeRows, rowInd);
        if any(inExcludeThese) 
            rowInd = rowInd + 1;
            continue;
        end 
    end
    % Is the data considered valid? 
    if (raw{rowInd, 8} < 0 || raw{rowInd, 5} < 0) % | (raw{rowInd, 8} < 0 | raw{rowInd, 5} < 0)
        rowInd = rowInd + 1;
        continue;
    end
%     if strcmp(raw{rowInd, 3}, 'CV_Chg') | strcmp(raw{rowInd, 3}, 'CC_Chg')
%         rowInd = rowInd + 1; % skip over data of row when this step arrives
%         continue;
%     end
    %%  finally, add data
    capacity = raw{rowInd, 8} * 1000; % conversion from mAh to µAh 
    voltage = raw{rowInd, 5};
    chgData{size(chgData,1) + 1, 1} = [capacity, voltage];
    
    if rowInd + 1 >  endAll
        % In this event, if there is no rest period after discharge, or if
        % there is no second rest period, there may be an indexing error. 
        % Kill process. 
        break; 
    end
    if strcmp('CV_Chg', raw{rowInd + 1, 3})
%         stillInChg = false; % functionally does nothing
        indEndCCHG = rowInd + 1;
        notImmediate = true;
        break;
    elseif strcmp(raw{rowInd + 1, 3}, 'CC_DChg')
        rowInd = rowInd + 1;
        break;
    end
    rowInd = rowInd + 1;
end
% cycleData = chgData;



%% Collecting Discharge Data
% stillInDchg = true;
dchgData = {};
if notImmediate
    rowInd = indEndCCHG + 1;
    while true
        rowInd = rowInd + 1;
        if strcmp(raw{rowInd, 3}, 'CC_DChg')
            rowInd = rowInd + 1;
            break;
        end
    end
end

while true
    %%  make all necessary checks before adding data
    if size(excludeRows, 2) > 0 
        inExcludeThese = ismember(excludeRows, rowInd);
        if any(inExcludeThese) 
            rowInd = rowInd + 1; % skip over the excluded row
            continue;
        end 
    end
    % Is the data considered valid? 
    if (raw{rowInd, 8} < 0 || raw{rowInd, 5} < 0) | (raw{rowInd, 8} < 0 | raw{rowInd, 5} < 0)
        rowInd = rowInd + 1;
        continue;
    end
%     if strcmp(raw{rowInd, 3}, 'CC_DChg')
%         % skip over data of row when this step arrives
%         rowInd = rowInd + 1; 
%         continue;
%     end
    if ~isnan(raw{rowInd, 1})
        % if entering another cycle, stop immediately! 
        break;
    end
    if rowInd + 1 >  endAll
        % In this event, if there is no rest period after discharge, or if
        % there is no second rest period, there may be an indexing error. 
        % Kill process. 
        break; 
    end
   
    
    %% finally, add data
    capacity = raw{rowInd, 8} * 1000; % conversion from mAh to µAh 
    voltage = raw{rowInd, 5};
    dchgData{size(dchgData,1) + 1, 1} =  [capacity, voltage];
    if strcmp(raw{rowInd + 1, 3},  'Rest')
%             stillInDchg = false;
            break;
    end
    if ~isnan(raw{rowInd + 1, 2})
        rowInd = rowInd + 1;
        break;
    end
    rowInd = rowInd + 1;
end

%% Getting rest data after discharge, adding to CHGDATA
if rowInd > endAll
    cycleData = {chgData dchgData};
    % nothing new to add, STOP
end

if strcmp(raw{rowInd + 1,3}, 'Rest')
    rowInd = rowInd + 2;
end

while includeRest & cycleID ~= 1
    if cycleID == 1 
        chgData{size(chgData,1) + 1, 1} = [NaN NaN];
        break;
    end
    if ~isnan(raw{rowInd, 1})
        % if entering another cycle, stop immediately! 
        break;
    end
    if (raw{rowInd, 8} < 0 || raw{rowInd, 5} < 0)
        rowInd = rowInd + 1;
        continue;
    end
    capacity = raw{rowInd, 8} * 1000; % conversion from mAh to µAh 
    voltage = raw{rowInd, 5};
    chgData{size(chgData,1) + 1, 1} = [capacity, voltage];
    
    if rowInd + 1 > endAll
        break;
    end
    
    rowInd = rowInd + 1;
end

cycleData = {chgData dchgData};
end