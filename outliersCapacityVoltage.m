function [filtCap, filtPot] = outliersCapacityVoltage(cycleCap, cyclePot)
%% Description: A script that gets rid of any outliers within a cycle
%% INPUT
% cyclePot = all potentials in a charge or discharge cycle
% cycleCap = all capacities in a charge or discharge cycle
%% OUTPUT
% filtPot = cyclePot that has its outliers removed
% filtCap = cycleCap that has its outliers removed
potOutlier = isoutlier(cyclePot);
capOutlier = isoutlier(cycleCap);

% could also exclude by writing a '[]' instead of NaN
cyclePot(potOutlier) = NaN;
cyclePot(capOutlier) = NaN;
cycleCap(capOutlier) = NaN;
cycleCap(potOutlier) = NaN; 

filtPot = cyclePot;
filtCap = cycleCap;
end