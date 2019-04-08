clear
syms x
f = @(x) x.^3 -9 * x.^2 + 24 * x + 5;
ezplot(f);
% local maximum value를 찾는 과정
[xmax,ymax] = fminsearch(@(x) -f(x),0);
disp(-ymax);
