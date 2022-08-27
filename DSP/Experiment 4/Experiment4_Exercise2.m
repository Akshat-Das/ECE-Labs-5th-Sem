z = input("Enter Zeros");
p = input("Enter Poles");
k = input("Enter Gain Factor");
[b,a] = zp2tf(z,p,k);
disp('b');disp(b);
disp('a');disp(a);