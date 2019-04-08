clear
syms t dt
f = @(t) cos(t);
appDer = @(t,dt) (f(t+dt)-f(t)) ./ dt;
T = -5:0.1:5;
dt = 0.1;
plot(T,appDer(T,dt),'b-.');
hold on
dt = 5;
plot(T,appDer(T,dt),'r-.');
plot(T,f(T),'k');
grid, hold off
