S = @(x) -10000-12*sqrt(x(1))-2*x(2);
x0=[0 0];
A=[1 1 ; 120 115 ; 2100 3100];
b=[500 ; 156000 ; 1000000];

fmincon(S,x0,A,b)
