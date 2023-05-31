clear;
t = 0:pi/100:2*pi;
a = 3;
b = 3;
x = @(t) a .* cos(t);
y = @(t) b .* sin(t);
evolute(x, y, t)
