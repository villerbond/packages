function retval = evolute (x, y, t)

  h = 1e-4;
  dx = @(t) (x(t+h) - x(t)) / h;
  dy = @(t) (y(t+h) - y(t)) / h;
  d2x = @(t) (dx(t+h) - dx(t)) / h;
  d2y = @(t) (dy(t+h) - dy(t)) / h;
  xc = x(t) - dy(t) .* (((dx(t)) .^2 + (dy(t)) .^ 2) ./ (dx(t) .* d2y(t) - dy(t) .* d2x(t)));
  yc = y(t) - dx(t) .* (((dx(t)) .^2 + (dy(t)) .^ 2) ./ (dx(t) .* d2y(t) - dy(t) .* d2x(t)));
  plot(x(t), y(t));
  hold on;
  axis equal;
  plot(xc, yc);

endfunction
