clear
dy = @(t,y) t-y;
[T,Y] = meshgrid(-1:1:5,-2:1:4);
arrowY = dy(T,Y);
arrowT = ones(size(Y));
quiver(T,Y,arrowT,arrowY);
hold on
plot(1,2);
for i = 1 : 5
    [t,y] = ode45(@(t,y) t-y,-1:.1:5,i);
    plot(t,y);
end
hold off
