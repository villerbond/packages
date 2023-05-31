clear;
a = 1;
b = 5;
# f = @(x) x.^3 + 3 .* x.^2 - 6 .* x - 2;
f = @(x) (x - 3.45) .* (x - 1.89898) .* (x - 4.929292);
root_comparison(f, a, b);
