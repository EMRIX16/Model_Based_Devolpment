matrixA = [3 2 1; 6 5 4; 9 8 7];
matrixB = [12 11 10; 15 14 13; 18 17 16];

%Calculate the sum of matrixA and matrixB and store it in a variable called matrixSum
matrixSum = matrixA + matrixB;

%Display the contents of matrixSum
disp("matrixSum");
disp( matrixSum);

%---------------------------------------%

%Create a row vector named rowVector with values from 1 to 5.

rowVector = (1:5);

%Create a column vector named columnVector with values from 6 to 10.
columnVector = (6:10)';

%Concatenate rowVector and columnVector horizontally and store the result in a variable called horizontalConcat.
horizontalConcat = horzcat(rowVector,columnVector.');

%Display the contents of horizontalConcat
disp("horizontalConcat");
disp( horizontalConcat);


%============================================



%Create a 2x2 matrix named originalMatrix with any values you like.
myMat = [1 2; 3 4];

%Use the repmat function to replicate originalMatrix into a 4x4 pattern and store it in a variable called repeatedMatrix.
repeatedMatrix = repmat(myMat, 2,2);
%Display the contents of repeatedMatrix

disp("repeatedMatrix");
disp( repeatedMatrix);


%=================%CHALLENGE=================%

%Create a 3x3 identity matrix  and store it in a variable called identityMatrix.

identityMatrix = eye(3,3);
%Perform matrix multiplication between identityMatrix and matrixA. Store the result in a variable called matrixProduct.
matrixProduct = identityMatrix * matrixA;

%Display the contents of matrixProduct
disp("matrixProduct");
disp( matrixProduct);




