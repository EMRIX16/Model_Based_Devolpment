g = 9.81;
L = 1;

mdl = gcs;

Lengths = 1:2:10;

for i = 1: numel(Lengths)

    L = Lengths(i);
    result = sim(mdl);
    plot(result.logsout.get("theta").Values);
    
    hold on;
    
    disp("Simulation " + num2str(i) + " complete");
    LegendLabels{i} = "L =" + num2str(i);
end
legend(LegendLabels);



