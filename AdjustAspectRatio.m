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


