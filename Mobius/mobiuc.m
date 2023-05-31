u = 0:pi/100:2*pi;
v = -1:0.5:1;
[U, V] = meshgrid(u, v);

x = (1. + (V ./ 2) .* cos(U ./ 2)) .* cos(U);
y = (1. + (V ./ 2) .* cos(U ./ 2)) .* sin(U);
z = (V ./ 2) .* sin(U ./ 2);

surf(x, y, z);
shading flat
