function [MinX, MaxX, MinY, MaxY] = GetBounds(Objects)
	MinX = min(Objects(:,2) - Objects(:,5));
	MaxX = max(Objects(:,2) + Objects(:,5));
	MinY = min(Objects(:,3) - Objects(:,5));
	MaxY = max(Objects(:,3) + Objects(:,5));
end


