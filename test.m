points = [0 0 0;
          1 1 1;
          2 4 2;
          3 3 3];


Bezier(.5, points)
BezierVectorized(.5, points)

tvals = linspace(0,1,100);
curve = BezierVectorized(tvals, points);

plot3(curve(:,1), curve(:,2), curve(:,3), 'b-','LineWidth',2);
hold on;
plot3(points(:,1), points(:,2), points(:,3), 'ro--');
grid on; axis equal;