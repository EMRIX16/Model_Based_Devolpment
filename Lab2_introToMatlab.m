
%================ CELL ARRAYS ================%
%Create a cell array containing various data types (numbers, text, and variables).
myCellArray = {5, 8, [1 2 3; 4 5 6], 'Hello, World!'};
%Access and display specific elements within the cell array.
disp(myCellArray{3});
disp(myCellArray{4});


%================ STRUCTURES ================%
%Create a simple structure to store information about a person (name, age, city).
person = struct('Name','Mahmoud','Age',22, 'City','KafrElsheikh');
%Access and display the structure fields.
fprintf('The name of the person is:%s \n',person.Name);
fprintf('The age of the person is: %d \n',person.Age);
fprintf('The city is : %s \n',person.City);

%================ STRING CONCAT ================%

firstName = 'Mahmoud';
secondName= 'Elsaeed';
fullName = [firstName , ' ', secondName];
disp(fullName);

%================ Conditional Statements (If) ================%

%Write an if statement that checks if a number is even or odd.
num = input('Enter the number you want to check: ');
if rem(num,2) == 0
    disp('The Number is EVEN');
else
    disp('The Number is ODD');
end


%================ For Loops  ================%

%Create a for loop to generate a sequence of numbers (e.g., 1 to 10).
%Display the numbers within the loop.
for i = 1:10
    fprintf('%d ', i);    
end
fprintf('\n');

%================ BASIC PLOTTING ================%

%Generate data for a simple plot (e.g., a sine wave).
A = linspace(1,10,100);
B = sin(A);


plot(A,B, 'LineWidth',2, 'Color',[.6 1 .07], 'Marker','pentagram');


xlabel A;
ylabel B;
legend('Sine Value');
title 'The sine of A'
grid on;


