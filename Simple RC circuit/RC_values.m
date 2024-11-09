R = 1;
C = 1e-6;

mdl = gcs;

R_vals = 1:2:10;

for i = 1:numel(R_vals)
     R = R_vals(i);   
    result = sim(mdl);
    plot(result.logsout.get("Vc").Values);
    hold on;
    %disp("Simulation " + num2str(i) + " complete");
    LegendLabels{i} = "R =" + num2str(R);

end
legend(LegendLabels);