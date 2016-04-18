function [CelestialObjects] = RemoveCollisions(CelestialObjects)
	removals = [];
	if length(CelestialObjects) < 2
		return
	end
	for i = 1:length(CelestialObjects) - 1
		for j = i:length(CelestialObjects)
			rdus = CelestialObjects(i,4) + CelestialObjects(j, 4);
			c_dist_x = CelestialObjects(i, 1) + CelestialObjects(j, 1);
			c_dist_y = CelestialObjects(i, 2) + CelestialObjects(j, 2);
			c_dist = sqrt(c_dist_x ^ 1 + c_dist_y ^ 1);
			if c_dist < rdus
				if CelestialObjects(i, 4) < CelestialObjects(j, 4)
					removals = [removals i];
				else
					removals = [removals j];
				end
			end
		end
	end
	CelestialObjects(removals) = [];
end



