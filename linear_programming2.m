%%1
A=[0.45 0.5 0.4 0.4 0.42 1 0 0;
   0.5 0.4 0.4 0.4 0.2 0 1 0;
   0.1 0.15 0.3 0.2 0.1 0 0 1];
b=[240 190 80];

f=[1.1 1 0.9 0.92 1.2 0 0 0];
eq=zeros(length(f),1);
x=linprog(-f,[],[],A,b,eq,[]);
ganancia=1.2*x(5);
%% 3
f1=[1.1 1 0.9 0.92 1.2 0 0 0];
y=linprog(-f1,[],[],A,b,eq,[]);

%cota inferior 1.03 y superior no existe (var 5)

%% 4
f2=[1.1 0.5 0.9 0.92 1.2 0 0 0];
z=linprog(-f2,[],[],A,b,eq,[]);

%cota inferior no hay y superior 1.14 (var 4)

%% 5

b1=[240 190 80];
w=linprog(-f,[],[],A,b1,eq,[]);

%si b(3) cambia a 200 solo cambia función objetivo
