function root_comparison(f, a, b)

  x1 = newton(f, a, b);
  x2 = bisection(f, a, b);
  x3 = fzero(f, [a, b]);

  x = linspace(a, b);
  y = f(x);
  plot(x, y, 'LineWidth', 2);
  hold on;
  plot(x1, f(x1), '.', 'MarkerSize', 30, 'Color', 'r');
  plot(x2, f(x2), '.', 'MarkerSize', 30, 'Color', 'g');
  plot(x3, f(x3), '.', 'MarkerSize', 30, 'Color', 'b');
  legend('f(x)', 'Newton', 'Bisection', 'fzero');
  xlabel('x');
  ylabel('y');
  grid on;
  hold off;
end

function x = newton(f, a, b)

  x0 = (a + b)/2;

  for i = 1:10
    fx = f(x0);
    dfx = (f(x0+0.0001) - fx)/0.0001;
    x0 = x0 - fx/dfx;
    if abs(fx) < 0.0001
        break;
    end
  end

  x = x0;
end

function x = bisection(f, a, b)

  for i = 1:10
    c = (a + b)/2;

    fa = f(a);
    fb = f(b);
    fc = f(c);

    if sign(fa) == sign(fc)
        a = c;
    else
        b = c;
    end

    if abs(fc) < 0.0001
        break;
    end
  end

  x = c;
end
