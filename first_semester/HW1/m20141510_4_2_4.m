clear
syms x
f = @(x) tan(x);
g = @(x) exp(-x.^2);
h = @(x) f(x)*g(x);
dfdx = @(x) diff(f(x),x);
dgdx = @(x) diff(g(x),x);

disp(simplify(diff(h(x),x)))
disp(simplify(dfdx(x).*g(x) + f(x).*dgdx(x)))

h = @(x) f(x)/g(x);
disp(simplify(diff(h(x),x)))
disp(simplify((g(x).*dfdx(x) - dgdx(x).*f(x)) / (g(x) .* g(x))))

h = @(x) g(f(x));
disp(simplify(diff(h(x),x)))
disp(simplify(subs(dgdx(x),x,f(x))).*dfdx(x))
