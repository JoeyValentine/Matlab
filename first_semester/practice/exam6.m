clear
syms x
f = @(x) 3*x.^2;
int(f,x,0,1)
