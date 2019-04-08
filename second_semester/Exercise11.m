%% Exercises from sec.11.1

%% 1.1

clear

syms theta
r = @(theta) cos(theta).*sin(theta);
figure
ezpolar(r,[0,2*pi])

%% 2.1

clear

syms theta
r = @(theta) cos(3*theta);
figure
ezpolar(r,[0,pi])

syms r
int(int(r,r,0,cos(3*theta)),0,pi)

%% 3.1

clear

syms x y r theta

x = r*cos(theta);
y = r*sin(theta);

% cartesian coordinate
figure
ezplot('(x-1)^2 + y^2=9')
axis equal
grid

pol = solve((x-1)^2 + y^2 - 9, r)

% polar coordinate
figure
ezpolar(pol(1))
figure
ezpolar(pol(2))


%% 4.1

clear

syms x y r theta

r = sqrt(x^2 + y^2);
theta = atan(x/y);

solve(r-1+sin(theta), y)
