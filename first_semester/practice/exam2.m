clear
syms x
f = @(x) x.^2 + 2 * x;
limit((f(x)-f(1))/(x-1),x,1)
