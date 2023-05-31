delta = 3.9;
xn = 0.500001;
xn1 = 0.5;
X = [];
Y = [];
X1 = [];
Y1 = [];

for i = 1:100
  xn = delta .* xn .* (1 - xn);
  xn1 = delta .* xn1 .* (1 - xn1);
  X(i) = i;
  Y(i) = xn;
  X1(i) = i;
  Y1(i) = xn1;
endfor

plot(X, Y);
hold on;
plot(X1, Y1, 'red');
hold off;
