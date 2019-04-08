clear
syms x
f = @(x) exp(-x.^2);
ezplot(f,[1.55,1.65]);
