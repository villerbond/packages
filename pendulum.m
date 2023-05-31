pkg load symbolic
clear;

function dydt = dtetadt (t, y)

  g = 9.81;
  L = 10;
  k = g / L;
  dydt(1) = y(2);
  dydt(2) = -k * sin(y(1));
  dydt = [dydt(1); dydt(2)];

endfunction

L = 10;
[x, y] = ode45(@dtetadt, 0:0.01:20, [0, 1]);
plot(x, y);
legend;
xg = L;
yg = L + 5;
plot([-xg, xg, xg, -xg, -xg], [-yg, -yg, yg, yg, -yg]);
hold on;
axis equal;

teta = y(:, 1);
t = 1;
xm = 0;
ym = 0;
xc = 0;
yc = 0;
plot_now = plot(0,0);
hold on;

phi = 0:pi/100:2*pi;
r = 1;
u = @(phi) r .* cos(phi);
v = @(phi) r .* sin(phi);
plot_circle = plot(0, 0);
hold off;

while t <= 2001

  xm = - L * sin(teta(t));
  ym = - L * cos(teta(t));

  set(plot_now, 'XData', [xc, xm], 'YData', [yc, ym]);
  set(plot_circle, 'XData', u(phi) + xm, 'YData', v(phi) + ym);

  drawnow'

  t += 1;
endwhile

