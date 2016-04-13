% Controls viewing of objects on the celestial viewer
%
% Graph: Graphs a set of celestial objects onto a matlab graph
%
% @author Joseph Hirschfeld <joe@ibj.io>


global PADDING
PADDING = 10;

function [] =  SetAspectRatio(x, y)
	global X_WINDOW
	global Y_WINDOW
	X_WINDOW = x;
	Y_WINDOW = y;
end

function [MinX, MinY, MaxX, MaxY] = AdjustAspectRatio(MinX, MinY, MaxX, MaxY)
	dx = MaxX - MinX;
	dy = MaxY - MinY;
	dx = dx + PADDING;
	dy = dy + PADDING;
	aspect_x = dx / X_WINDOW;
	aspect_y = dy / Y_WINDOW;
	aspect = aspect_y / aspect_x;
	if aspect > 1
		aspect_x = aspect_x * aspect;
	else
		aspect_y = aspect_y / aspect;
	end
	dx = aspect_x * X_WINDOW;
	dy = aspect_y * Y_WINDOW;
	MaxX = (MaxX + MinX) / 2 + (dx / 2);
	MinX = (MaxX + MaxX) / 2 - (dx / 2);
	MaxY = (MaxY + MinY) / 2 + (dy / 2);
	MinY = (MaxY + MinY) / 2 - (dy / 2);
end

% Graphs a celestial object field onto the passed graph
function [] =  Graph(CelestialObjects, Graph)
	MinX, MaxX, MinY, MaxY = GetBounds(CelestialObjects);
	MinX, MinY, MaxX, MaxY = AdjustAspectRatio(MinX, MinY, MaxX, MaxY);
	set(Graph, 'XLim', [MinX MaxX]);
	set(Graph, 'YLim', [MinY MaxY]);
	
	Xs, Ys = PlotCircle(CelestialObjects(:2), CelestialObjects(:3), CelestialObjects(:5), 100);
	axes(Graph);
	plot(Xs, Ys);	
end

function [MinX, MaxX, MinY, MaxY] = GetBounds(Objects)
	MinX = min(Objects(:,2) - Objects(:,5));
	MaxX = max(Objects(:,2) + Objects(:,5));
	MinY = min(Objects(:,3) - Objects(:,5));
	MaxY = max(Objects(:,3) + Objects(:,5));
end

% Returns an x y set from a center x, center y, and radius
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
