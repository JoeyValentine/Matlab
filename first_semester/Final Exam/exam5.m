syms x 
f = @(x) 1/3 * x.^3 - 9 * x + 3;
ezplot(f)
[xmax,ymax] = fminsearch(@(x) -f(x),-4,-2);
b1 = xmax;
[xmin,ymin] = fminsearch(@(x) f(x), 2, 4);
b2 = xmin;

a = min(abs(b1),abs(b2))