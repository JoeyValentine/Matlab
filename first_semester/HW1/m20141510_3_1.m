dy = @(t,y) t-y;
[T,Y] = meshgrid(-1:1:5,-2:1:4);
arrowY = dy(T,Y);
arrowT = ones(size(Y));
quiver(T,Y,arrowT,arrowY);
hold on
[t,y] = ode45(@(t,y) t-y,-1:.1:5,3); plot(t,y,'k');
[t,y] = ode45(@(t,y) t-y,-1:.1:5,1); plot(t,y,'r');
[t,y] = ode45(@(t,y) t-y,-1:.1:5,-2); plot(t,y,'b');
hold off