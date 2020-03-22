V_fm = 0;
V_fb = 0;
m=0;
b=0;
n=100;
a=0.1;
it=100;
iter=1:1:100;
E=0;
for i=1:it
   V_fm(i) = (-2/n)*sum(x'*(y-(m*x+b)));
   V_fb(i) = (-2/n)*sum((y-(m*x+b)));
   E(i)=(1/n)*sum((y-(m*x+b)).^2);
   m = m-a*V_fm(i);
   b = b-a*V_fb(i);
end
y1=[];
for t=1:n
    y1(t)=m*x(t)+b;
end
%%
figure(1)
plot(x,y,'.')
hold on
plot(x,y1)
title('Puntos de data.csv y línea resultante con 100 iteraciones y \lambda = 0.1')
xlabel('x')
ylabel('y')
legend('Puntos','Línea resultante')
figure(2)
plot(iter,E)
title('Error con cada iteración (100)')
xlabel('Iteraciones')
ylabel('Error')