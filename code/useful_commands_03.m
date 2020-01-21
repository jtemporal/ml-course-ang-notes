% printing stuff
a = pi;  % assigning the value of pi to a

display (a)  % will print the value stored in a (even if you use a ; at the end of the line) 

format long  % will change default display settings to a bunch of decimal cases

display (a)

format short  % will change to default display settings to 4 decimals points

v = 1:5; % will instantiate a vector that goes from 1 to 2

display (v)

v = 1:0.1:2;   % will instantiate a vector that goes from 1 to 2 in increments of 0.1

display (v)

A = ones (2, 2); % creates a matrix of 1 with 2x2 dimensions

A = 5*ones (2, 2); 

A = zeros (5, 5);

A = eye (4);  % creates an identity matrix with 4x4 dimensions

disp (sprintf('2 decimals: %0.2f\n', a))  % formatting strings to display numbers

B = rand (3, 3);  % this creates a 3x3 matrix of random values

B = randn (3, 3);  % this creates a 3x3 matrix of random normally distributed values

B

w = -6 + sqrt(10) * (randn(1, 10000));

hist (w)  % plots the histogram of w

hist (w, 50)  % plots the histogram of w with 50 bins

save '../data/identity_mat_4.mat' A;  % this saves the variable A to the file identity_mat_4.mat

clear  % this erases all variables from your scope, use wisely

load ('../data/identity_mat_4.mat')  % this loads the previously saved variable A into our scope

save '../data/identity_mat_4.txt' A -ascii;  % this saves the variable A on a human readable format 

who  % all variables in the scope

whos % shows all variables and some details about it


A