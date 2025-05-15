syms n z w0;
%23BIT064
%A
x1 = 1; 
Z1 = ztrans(x1, n, z);
disp('Z-transform of x1 using ztrans:');
disp(Z1);

%B
x2 = (1/2)^n;
Z2 = ztrans(x2, n, z);
disp('Z-transform of x2 using ztrans:');
disp(Z2);

%C
x3 = (1/2)^n + (1/3)^n;
Z3 = ztrans(x3, n, z);
disp('Z-transform of x3 using ztrans:');
disp(Z3);

%D
x4 = cos(w0*n); 
Z4 = ztrans(x4, n, z);
disp('Z-transform of x4 using ztrans:');
disp(Z4);

%E
x5 = (1/2)^n * cos(w0*n); 
Z5 = ztrans(x5, n, z);
disp('Z-transform of x5 using ztrans:');
disp(Z5);