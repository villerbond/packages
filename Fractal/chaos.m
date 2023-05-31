clear;

x = ones(1, 1000) * 0.2;
x1 = ones(1, 1000) * 0.2;
delta = linspace(0,5,1000);

n = 100;

for i = 1:n
  x1 = delta .* x1 .* (1 - x1);
  x = [x; x1];
endfor

plot(delta, x1, 'o', 'MarkerSize', 2);
hold on;

for i = 1:7
  plot(delta, x(100 - i, :), 'o', 'MarkerSize', 2);
endfor

axis equal;
hold off;
