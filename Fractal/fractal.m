clear;

x1 = ones(1,100) * 0.5;
x11 = ones(1,100) * 0.5;
x2 = ones(1,100) * 0.500001;
x21 = ones(1,100) * 0.500001;

n = 1:100;
delta = 3.9;

for i = 1:100
  x11 = delta * x11 .* (1 - x11);
  x1 = [x1; x11];
  x21 = delta * x21 .* (1 - x21);
  x2 = [x2; x21];
endfor

plot(n, x1);
hold on;
plot(n, x2);
