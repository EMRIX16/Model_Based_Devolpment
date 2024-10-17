%Create a script that calculates the factorial of a given number using a while loop. Prompt the user for input.

num = input('Enter a non-negative number: '); %asking the user for the number to be calculated

if num < 0
    disp('INVALID! Please enter a positive number'); % WARRNING the user to input a posotive number 
else
    factorial = 1;
i = num;
while(i>0)
    factorial = factorial*i;
    i = i-1;
end

fprintf('The factorial is (%d!) = %d \n', num, factorial);
end

