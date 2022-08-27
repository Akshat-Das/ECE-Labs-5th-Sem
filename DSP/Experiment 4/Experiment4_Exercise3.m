clc; 
clearvars; 
close all;
a = [1 0 -0.81]; % Denominator coefficient as in step 2 
b = [1 -1 0]; % Numerator coefficient as in step 2
y = [2 2]; % Initial conditions array
x = [1.42 0]; % Initial conditions array
xic = filtic(b,a,y,x); % converts past input x and output y intoinitial %conditions which is required for the computation of %Y(z). Refer Step 2
ax = [1 -0.7]; bx = 1.42; % X(z) transform coeffs
ay = conv(a, ax); % Gives denominator polynomial coefficients of Y(z)
by = conv(b, bx) + conv(xic,ax);% Gives numerator polynomial coefficients of Y(z)
[R, p, C] = residuez(by, ay);
disp('Residues '), disp( R), disp('Poles '), disp( p), disp('Direct Term'), disp(C);
