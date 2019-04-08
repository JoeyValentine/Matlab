clear
syms x
f = @(x) 2 * x.^3 - 3*x.^2 - 12 * x;
%f = @(x) 1/3 * x.^3 - 9 * x + 3;
ezplot(f)
locXmax = fminsearch(@(x) f(x),3);
locXmin = fminsearch(@(x) -f(x),-3);
a = min(abs(locXmax),abs(locXmin))
