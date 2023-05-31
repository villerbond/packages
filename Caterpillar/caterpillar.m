clc

a = -2;
a0 = -2;
b = 0;
x1 = 10;
y1 = 10;
r = 1;
n = 300;
step = 1/4;

figure
plot([-x1, x1, x1, -x1, -x1], [-y1, -y1, y1, y1, -y1])
hold on
axis equal

plot_array = []
for i = 1:5
  plot_array(i) = plot(0, 0)
endfor

hold off

phi = 0:pi/100:2*pi;
u = @(phi) r .* cos(phi);
v = @(phi) r .* sin(phi);
is_end = false;

for i = 1:n

  a = a0;

  if !is_end
    if a0 + 9*r >= x1
      is_end = true;
      a0 = x1 - r;
    else
      a0 += step;
    endif

    for k = 1:5
      set(plot_array(k), 'XData', u(phi) + a, 'YData', v(phi) +b)
      a += 2*r;
    endfor

  else
    if a0 - 9*r <= -x1
      is_end = false;
      a0 = -x1 + r;
    else
      a0 -= step;
    endif

    for k = 1:5
      set(plot_array(k), 'XData', u(phi) + a, 'YData', v(phi) +b)
      a -= 2*r;
    endfor
  endif

  drawnow
  pause(0.01)
endfor
