%########### CREATE AND OPEN THE MODEL ###########%
model = 'controlSystemProject';
new_system(model, 'Model');
open_system(model);

%########### ADD BLOCKS ###########%
add_block('simulink/Sources/Ramp', [model '/RampInput']);
add_block('simulink/Sinks/Scope', [model '/Scope']);
add_block('simulink/Continuous/Transfer Fcn', [model '/TransferFnc']);
add_block('simulink/Continuous/PID Controller', [model '/PID']);

%########### CONNECT BLOCKS ###########%
add_line(model, 'RampInput/1', 'PID/1');          % Ramp to PID
add_line(model, 'PID/1', 'TransferFnc/1');       % PID to Transfer Function
add_line(model, 'TransferFnc/1', 'Scope/1');     % Transfer Function to Scope

% Increase Scope input ports to allow multiple connections
set_param([model '/Scope'], 'NumInputPorts', '2');
add_line(model, 'RampInput/1', 'Scope/2');       % Ramp to Scope (second input)

%########### SET BLOCK PARAMETERS ###########%
set_param([model '/PID'], 'P', '2', 'I', '5', 'D', '0.5');
set_param([model '/RampInput'], 'Slope', '2');
set_param([model '/TransferFnc'], 'Denominator', '[1 2 4]');
set_param([model '/Scope'], 'ShowLegend', 'on');

%########### AUTO-ARRANGE BLOCKS ###########%
Simulink.BlockDiagram.arrangeSystem(model);

%########### SIMULATE, OPEN, AND SAVE ###########%
sim(model);
open_system(model);
save_system(model);
