g = 9.81;
L = 1;
m = 1;
theta0 = pi/4;
omega0 = 0;
tspan = [0 20];

function dYdt = pendulum_eqs(t, Y)
  g = 9.81;
  L = 1;
  dYdt = [Y(2); (-g/L)*sin(Y(1))];
endfunction

y0 = [theta0; omega0];
[t, Y] = ode45(@pendulum_eqs, tspan, y0);

x = L*sin(Y(:,1));
y = -L*cos(Y(:,1));

figure;
for k=1:length(t)
  plot([0 x(k)], [0 y(k)], 'b', 'LineWidth', 2);
  hold on;
  plot(x(k),y(k),'ro','MarkerSize',20,'LineWidth',2);
  hold off;
  axis([-L L -L L]);
  axis square;
  pause(0.1);
endfor
