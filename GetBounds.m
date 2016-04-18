function [MinX, MaxX, MinY, MaxY] = GetBounds(Objects)
	MinX = min(Objects(:,1) - Objects(:,4));
	MaxX = max(Objects(:,1) + Objects(:,4));
	MinY = min(Objects(:,2) - Objects(:,4));
	MaxY = max(Objects(:,2) + Objects(:,4));
end


