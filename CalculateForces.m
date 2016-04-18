%{
function [X, Y] = CalculateForces(CelestialObjects, MyX, MyY, MyMass)
	X = 0;
	Y = 0;
	for Obj = CelsetialObjects
		dx = (Obj(2) - MyX);
		dy = (Obj(3) - MyY);
		dist2 = dx ^ 2 + dy ^ 2;
		dist2 = dist2 * 1000; % km -> m
		F = 6.67E-11 * (MyMass + Obj(4)) / dist2;
		theta = atan2(dy, dx);
		X = X + F * cos(theta);
		Y = Y + F * sin(theta);
    end
%}


function [X, Y] = CalculateForces(CelestialObjects, MyX, MyY, MyMass)
	X = 0;
	Y = 0;
    idx = 1;
	for Obj = CelestialObjects
		dx = (CelestialObjects(idx,1) - MyX);
		dy = (CelestialObjects(idx,2) - MyY);
		dist2 = dx ^ 2 + dy ^ 2;
		dist2 = dist2 * 1000; % km -> m
		F = 6.67E-11 * (MyMass + CelestialObjects(idx,3)) / dist2;
		theta = atan2(dy, dx);
		X = X + F * cos(theta);
		Y = Y + F * sin(theta);
    end
