fprintf('###Welcome to the trip price calculator###\n'); % Welcoming the user 

fprintf(' 1.Car (20$/mile) \n 2.Train (5$/mile)\n 3. Bus (10/mile)\n 4. Airplane (40$/mile)\n '); % Giving the options
transportation_mode = input('Choose your prefered mode of transportation: '); %prompt the user to choose the mode
trip_distance = input('Enter the distance of your trip in miles: '); % prompt the user to enter the distance of the trip

car_cost = 20;
train_cost = 5;
bus_cost = 10;
airplane_cost = 40;

switch transportation_mode
    case 1
        fprintf('The cost of your trip will be %0.2f $ \n', car_cost*trip_distance);
    
    case 2
        fprintf('The cost of your trip will be %0.2f $ \n', train_cost*trip_distance);
       
    case 3
       
        fprintf('The cost of your trip will be %0.2f $ \n', bus_cost*trip_distance);
        
    case 4
        
        fprintf('The cost of your trip will be %0.2f $ \n', airplane_cost*trip_distance);
    otherwise
        disp('Please, enter a valid option');


end