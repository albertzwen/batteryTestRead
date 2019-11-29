function graph = plotCapacityVoltage(fileName, sheet, excludeCycles, excludeRows)
h = getCapacityVoltage(fileName, sheet, excludeCycles, excludeRows);
%% Function that takes data from readTestData and creates figure
%  Will automatically exclude any outliers
%% h = cell array from readTestData
%% graph = graph handle 

%% Sort data for plotting
chg_cap = [];
chg_pot = [];
dchg_cap = [];
dchg_pot = [];
if length(h) == 1 
    cycle = h{1};
    cc_chg = cycle{1};
    for n = 1:length(cc_chg)
        point = cc_chg{n};
        chg_cap = [chg_cap; point(1)];
        chg_pot = [chg_pot; point(2)];
    end
    
    cc_dchg = cycle{2};
    for m = 1:length(cc_dchg) 
        point = cc_dchg{m};
        dchg_cap = [dchg_cap; point(1)];
        dchg_pot = [dchg_pot; point(2)];
    end
else 
    for k = 1:length(h) 
        cycle = h{k};
        cc_chg = cycle{1};
        for n = 1:length(cc_chg)
            point = cc_chg{n};
            chg_cap = [chg_cap; point(1)];
            chg_pot = [chg_pot; point(2)];
        end

        cc_dchg = cycle{2};
        for m = 1:length(cc_dchg) 
            point = cc_dchg{m};
            dchg_cap = [dchg_cap; point(1)];
            dchg_pot = [dchg_pot; point(2)];
        end
    end
end
%% Outlier Removal 
pChargeOutlier = isoutlier(chg_pot);
cChargeOutlier = isoutlier(chg_cap);
pDischargeOutlier = isoutlier(dchg_pot);
cDischargeOutlier = isoutlier(dchg_cap);

% could also exclude by writing a '[]' instead of NaN
chg_pot(pChargeOutlier) = NaN;
chg_cap(pChargeOutlier) = NaN;
chg_pot(cChargeOutlier) = NaN;
chg_cap(cChargeOutlier) = NaN;

dchg_pot(pDischargeOutlier) = NaN;
dchg_cap(pDischargeOutlier) = NaN;
dchg_pot(cDischargeOutlier) = NaN;
dchg_cap(cDischargeOutlier) = NaN;
%% Graph
chg_plot = plot(chg_cap, chg_pot, 'o-', 'LineWidth',0.5, 'MarkerSize',10);
hold on
dchg_plot = plot(dchg_cap, dchg_pot, 'o-', 'LineWidth', 0.5, 'MarkerSize', 10);
hold on
ylabel ('Potential','FontSize',20, 'FontWeight','bold');
xlabel ('Capacity','FontSize',20,'FontWeight','bold');
a = get(gca,'XTickLabel');
set(gca,'XTickLabel',a,'fontsize',16)
set(gcf,'color','white')
xticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9]);
yticks([3 3.2 3.4 3.6 3.8 4.0 4.2 4.4]);
graph = gcf;
end