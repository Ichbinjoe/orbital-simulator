function [CelestialObjects] = RemoveCollisions(CelestialObjects)
	removals = [];
	if length(CelestialObjects) < 2
		return
	end
	for i = 1:length(celestialObjets) - 1
		for j = i:length(celestialObjects)
			rdus = CelestialObjects(i,5) + CelestialObjects(j, 5);
			c_dist_x = CelestialObjects(i, 2) + CelestialObjects(j, 2);
			c_dist_y = CelestialObjects(i, 3) + CelestialObjects(j, 3);
			c_dist = sqrt(c_dist_x ^ 2 + c_dist_y ^ 2);
			if c_dist < rdus
				if CelestialObjects(i, 5) < CelestialObjects(j, 5)
					removals = [removals i];
				else
					removals = [removals j];
				end
			end
		end
	end
	CelestialObjects(removals) = [];
end



