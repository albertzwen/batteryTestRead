function graph = capacityVoltage()
%% Description: the main script, an API, for obtaining capacity vs voltage graph 
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
%% OUTPUT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% graph = graph handle 
fileName = input('Which file do you want this script to read?\n\nInput the file name (quotation marks not necessary):   ', 's');
sheet = input('Which sheet do you want this script to read?\nPlease enter the sheet number\n\nInput your answer:   ');
excludeCycles = input('Which cycles do you wish to exclude from the data?\nYou can also leave this part blank and press "ENTER"\n\nInput your answer as a vector:   ');
excludeRows = input('Which rows do you wish to exclude from the data?\nYou can also leave this part blank and press "ENTER"\n\nInput your answer as a vector:   ') ;
includeRest = input('Do you wish to include rests for this plot? [Y/N]\n\nInput your answer:   ', 's');
if strcmp('Y', includeRest) || strcmp('y', includeRest)
    includeRest = true;
else
    includeRest = false; 
end
h = getCapacityVoltage(fileName, sheet, [excludeCycles], [excludeRows], includeRest);
% numCycles = input('Do you wish to know how many cycles are in this plot? [Y/N]\nInput your answer:   ', 's');
% if strcmp('Y', includeRest) || strcmp('y', includeRest)
%     disp(size(h,1));
% end
graph = plotCapacityVoltage(h);