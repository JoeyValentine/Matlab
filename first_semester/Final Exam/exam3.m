clear
syms h
f = @(x) x.^3 + 4 * x -2;
limit( (f(1+3*h)-f(1)) / h, h, 0)
