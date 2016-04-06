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

	NewCelestialObjects = RemoveCollisions(CelestialObjects)	
end
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
end


% Calculates Forces between this celestial object and an object with a position and a mass
function [X, Y] CalculateForces(CelestialObjects, MyX, MyY, MyMass)
	X = 0;
	Y = 0;
	for Obj = CelsetialObjects
		dx = (Obj(2) - MyX);
		dy = (Obj(3) - MyY);
		dist2 = dx ^ 2 + dy ^ 2;
		dist2 = dist2 * 1000; % km -> m
		F = (MyMass + Obj(4)) / dist2;
		theta = atan2(dy, dx);
		X = X + F * cos(theta);
		Y = Y + F * sin(theta);
	end
end

