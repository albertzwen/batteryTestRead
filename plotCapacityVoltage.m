function graph = plotCapacityVoltage(h)
%% Function that takes data from readTestData and creates figure
%  Will automatically exclude any outliers
%% h = cell array from readTestData
%% graph = graph handle 

%% Sort data for plotting
chg_cap = [];
chg_pot = [];
dchg_cap = [];
dchg_pot = [];
% if length(h) == 1 
%     cycle = h{1};
%     cc_chg = cycle{1};
%     for n = 1:length(cc_chg)
%         point = cc_chg{n};
%         chg_cap = [chg_cap; point(1)];
%         chg_pot = [chg_pot; point(2)];
%     end
%     [chg_cap, chg_pot] = outliersCapacityVoltage(chg_cap, chg_pot);
%     
%     cc_dchg = cycle{2};
%     for m = 1:length(cc_dchg) 
%         point = cc_dchg{m};
%         dchg_cap = [dchg_cap; point(1)];
%         dchg_pot = [dchg_pot; point(2)];
%     end
%     [dchg_cap, dchg_pot] = outliersCapacityVoltage(dchg_cap, dchg_pot);
% else 
for k = 1:length(h) 
    cycle = h{k};
    cc_chg = cycle{1};
    cyc_chg_cap = [];
    cyc_chg_pot = [];
    for n = 1:length(cc_chg)
        point = cc_chg{n};
        cap = point(1);
        pot = point(2);
        cyc_chg_cap = [cyc_chg_cap; cap];
        cyc_chg_pot = [cyc_chg_pot; pot];
    end
    [cyc_chg_cap, cyc_chg_pot] = outliersCapacityVoltage(cyc_chg_cap, cyc_chg_pot);
    chg_cap = [chg_cap; cyc_chg_cap];
    chg_pot = [chg_pot; cyc_chg_pot];

    cc_dchg = cycle{2};
    cyc_dchg_cap = [];
    cyc_dchg_pot = [];
    for m = 1:length(cc_dchg) 
        point = cc_dchg{m};
        cap = point(1);
        pot = point(2);
        cyc_dchg_cap = [cyc_dchg_cap; cap];
        cyc_dchg_pot = [cyc_dchg_pot; pot];
    end
    [cyc_dchg_cap, cyc_dchg_pot] = outliersCapacityVoltage(cyc_dchg_cap, cyc_dchg_pot);
    dchg_cap = [dchg_cap; cyc_dchg_cap];
    dchg_pot = [dchg_pot; cyc_dchg_pot];
end


%% Graph
chg_plot = plot(chg_cap, chg_pot, 'bo-', 'LineWidth',0.5, 'MarkerSize',10, 'LineStyle', 'none');
hold on
dchg_plot = plot(dchg_cap, dchg_pot, 'ro-', 'LineWidth', 0.5, 'MarkerSize', 10, 'LineStyle', 'none');
hold on
ylabel ('Potential (V)','FontSize',20, 'FontWeight','bold');
xlabel ('Capacity (µAh)','FontSize',20,'FontWeight','bold'); 
a = get(gca,'XTickLabel');
set(gca, 'xtick', 0:5:30, 'XTickLabel',a,'fontsize',16)
set(gcf,'color','white')
% xticks([0:0.1:0.8]);
yticks([3 3.2 3.4 3.6 3.8 4.0 4.2 4.4]);
graph = gcf;
end