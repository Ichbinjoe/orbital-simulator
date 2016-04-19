function [X,Y] = PlotCircle(cx, cy, r, points)
	X = zeros(points * length(cx), 1);
	Y = zeros(points * length(cy), 1);
	idx = 1;
    for planetIdx = 1:length(cx)
        for delta = linspace(0, 2*pi, points)
            X(idx) = r(planetIdx) * cos(delta) + cx(planetIdx);
            Y(idx) = r(planetIdx) * sin(delta) + cy(planetIdx);
            idx = idx + 1;
        end
    end
