function fracto(p, x1, y1, x2, y2, nx, ny)

  r = roots(p)
  colors = hsv(length(r));

  x = linspace(x1, x2, nx);
  y = linspace(y1, y2, ny);

  cmap = zeros(ny, nx, 3);

  for i = 1:nx
      for j = 1:ny
          root_found = false;
          xn = x(i);
          yn = y(j);
          for k = 1:20
              f = polyval(p, xn) - yn;
              df = polyval(polyder(p), xn);
              xn = xn - f/df;
              if abs(polyval(p, xn) - yn) < 0.001
                  [tmp, index] = min(abs(r - xn))
                  cmap(j, i, :) = colors(index, :);
                  root_found = true;
                  break;
              end
          end
          if ~root_found
              cmap(j, i, :) = [0 0 0];
          end
      end
  end

  image(x, y, cmap);
  axis xy;
  xlabel('x');
  ylabel('y');
