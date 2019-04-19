% Define Eulers Method ---------------------------------------------------
function [x, y] = ode_eulers_method_print(a,b,h,f,y_iv_x,y_iv_y)
fprintf('\n(When h = %f)\n', h);
n = (b - a)/h; % n = # of subints | loop iters
fprintf ('Using %d subintervals: ', n) % Number of subintervals used
x(1) = a; y(1) = y_iv_y; % Matlab indices start with 1
for i = 1:n
y(i+1) = y(i) + h*f(x(i), y(i)); % Calculate yi+1
x(i+1) = x(i) + h; % Calculate xi+1
end
fprintf ('y(%d) is %7.5f\n', b, y(n+1))% This is formatted output
end
function [x, y] = ode_eulers_method(a,b,h,f,y_iv_x,y_iv_y)
n = (b - a)/h; % n = # of subints | loop iters
x(1) = a; y(1) = y_iv_y; % Matlab indices start with 1
for i = 1:n
y(i+1) = y(i) + h*f(x(i), y(i)); % Calculate yi+1
x(i+1) = x(i) + h; % Calculate xi+1
end
end
% Define lab_two
function [] = lab_two()
clear;
% Define test variables -- Problem One -- --------------------------------
a = 1; b = 3; % Define initial x and x terminal points
% y(1) = -2; 'iv' in var names means initial value
iv_x = 1; % y(1)
iv_y = -2; % = -2
h = 0.1; % Discretization
f = @ (x, y) y^2* sin(x) + 1; % Define the function f; this needs x, y
% Call eulers method for Problem One -------------------------------------
h = 0.1;
tic % time the execution length of ode_eulers_method_print( for given
variables
ode_eulers_method_print(a,b,h,f,iv_x,iv_y);
toc % print the total exec time
h = 0.01;
tic % time the execution length of ode_eulers_method_print( for given
variables
ode_eulers_method_print(a,b,h,f,iv_x,iv_y);
toc
h = 0.001;
tic % time the execution length of ode_eulers_method_print( for given
variables
ode_eulers_method_print(a,b,h,f,iv_x,iv_y);
toc
h = 0.0001;
tic % time the execution length of ode_eulers_method_print( for given
variables
ode_eulers_method_print(a,b,h,f,iv_x,iv_y);
toc
% Define test variables -- Problem Two -- --------------------------------
a = 0; b = 1.5; % Define initial x and x terminal points
% y(0) = 3; 'iv' in var names means initial value
iv_x = 0; % y(0)
iv_y = 3; % = 3
h = 0.1; % Discretization
f = @ (x, y) (-1.2) * y + 7 * 2.71828^((-0.3)*x); % Define f
% Call eulers method for Problem Two Part B ------------------------------
h = 0.1;
b = 1.5;
ode_eulers_method_print(a,b,h,f,iv_x,iv_y);
% to print the return values of the function, uncomment the following
% eulers_method(a,b,h) % note that there is no semicolon
% Call eulers method for Problem Two Part C ------------------------------
h = 0.01;
b = 1.5;
ode_eulers_method_print(a,b,h,f,iv_x,iv_y);
h = 0.001;
b = 1.5;
ode_eulers_method_print(a,b,h,f,iv_x,iv_y);
% Call eulers method for Problem 5/2 Part C ------------------------------
h = 0.01;
[x1, y1] = ode_eulers_method(a,b,h,f,iv_x,iv_y);
five_two_c = y1(101);
fprintf('\nProblem 5/2 Part C: %d (odeEuler(0.01), y1(101))',five_two_c);
h = 0.001;
[x2, y2] = ode_eulers_method(a,b,h,f,iv_x,iv_y);
five_two_c = y2(101);
fprintf('\nProblem 5/2 Part C: %d (odeEuler(0.001), y2(101))',five_two_c);
% to print the return values of the function, uncomment the following
% eulers_method(a,b,h) % note that there is no semicolon
end
