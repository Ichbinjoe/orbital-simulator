function [X,Y] = PlotCircle(cx, cy, r, points)
	X = zeros(points, 1);
	Y = zeros(points, 1);
	idx = 1;
	for delta = linspace(0, 2*pi, points)
		X(idx) = r * cos(delta) + cx;
		Y(idx) = r * sin(delta) + cy;
		idx = idx + 1;
	end
end
