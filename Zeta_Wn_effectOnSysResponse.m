%#### This Script studies the different system Responses dut to changes in Zeta and Wn ####%

Omega = char(969); %The ASCII code to print the symbol of omega
Zeta = char(950); %The ASCII code to print the symbol of Zeta

%%Section 1

% The following code takes the values from the user in a more natural way by taking it as a STRING %
% This will eleminate the need of the user to write [] himself%
Wn_string = input(['Enter the Natural Frquency values you want to study (' ,Omega, '_n) : ' ], 's');
Wn = str2num(Wn_string); % The natural frequency values taken from the user


zeta_string = input(['Enter the Damping Ratio ' ,Zeta,' values you want to study: ' ], 's');
zeta = str2num(zeta_string); % The ZETA values taken from the user

sim_time =  0.0:0.1:20; % For howlong the simulation will run
step_input = ones(size(sim_time));


%%Section 2 
% The SIMULATION %
pos = 1;
simNum = 1;

figure;

for i = 1:length(Wn)
    for j = 1:length(zeta)
        
        num = [0 Wn(i)^2]; % The numerator  of the TF
        den = [1, 2*zeta(j)*Wn(i), Wn(i)^2]; % The denominator  of the TF
        sysTF = tf(num,den);

        [y, t] = step(sysTF, sim_time); % Calculating the Step response

        subplot(length(Wn), length(zeta), pos); % Defining the No. of subplots and the position

        plot(t,step_input, 'b', 'LineWidth', 1.5); %Draws all step inputs on the subplots in clear Blue line
        
        hold on; % To draw the response over the Step input
        plot(t,y, 'r','LineWidth',1.5); %Draws the response in a clear Red color
        hold off;

        xlabel ('time(t)');
        ylabel ('System Response(y)');

        title(['\omega_n = ',num2str(Wn(i)), ', \zeta = ', num2str(zeta(j))]);

        legend('Step input', 'Sys Response');
        
       
         sys_info(simNum) = stepinfo(sysTF);
       
        simNum = simNum +1;
        pos = pos + 1; %To choose the right subplot to draw on
    end

end

sgtitle('Visual Representation of the effect of different \omega_n and \zeta values on the Response of a system');

