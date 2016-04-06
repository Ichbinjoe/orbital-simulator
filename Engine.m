% CELESTIAL OBJECT ENGINE
%
% Celsetial Object structure (basic matlab vector)
%
% 1: ID (not touched by engine)
% 2: X
% 3: Y
% 4: Mass (kg)
% 5: Radius (km)
% 6: X Velocity (km/s)
% 7: Y Velocity (km/s)
%
% RunStep(CelestialObjects, TimeStep):
% 	returns a vector of all remaining celestial objects one time step in the future
% 	CelestialObjects: vector of all current celestial objects
% 	TimeStep: time step in seconds
%
function NewCelsetialObjects RunStep(CelestialObjects, TimeStep)

	
	return removeCollisions(CelestialObjects)

% Removes CelestialObjects that have collided with eachother. The smaller celestial object is always destroyed
% in preference to larger celestial objects
function CelestialObjects RemoveCollisions(CelestialObjects)
	removals = []
	if length(CelestialObjects) < 2
		return CelestialObjects;
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
	return CelestialObjects;
end

