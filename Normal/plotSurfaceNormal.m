function normal = plotSurfaceNormal(x0, y0)
  [x, y] = meshgrid(-5:0.2:5);
  z = 20 - x.^2 - y.^2;
  z0 = 20 - x0^2 - y0^2
  dx = 2*x0;
  dy = 2*y0;
  dz = 1;
  normal = [dx, dy, dz];
  normal = normal.*10;
  figure
  surf(x, y, z)
  hold on
  quiver3(x0, y0, z0, normal(1), normal(2), normal(3), 'LineWidth', 2, 'Color', 'k')
end
