clear
[t, Y] = ode45('diffEQ',0:1:3,2);
plot(t,Y)
%What is Y(2)?
disp(Y(3))
