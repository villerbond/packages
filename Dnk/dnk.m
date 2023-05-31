t = -5*pi:pi/10:5*pi;
x1 = cos(t);
y1 = sin(t);
x2 = cos(pi + t);
y2 = sin(pi + t);
plot3(x1, y1 ,t , color = 'blue', x2, y2, t, color = 'red');

hold on;

for i = -5*pi:pi/10:5*pi
  plot3([cos(i),cos(i+pi)],[sin(i),sin(i+pi)], [i,i], color = 'yellow')
endfor

hold off
