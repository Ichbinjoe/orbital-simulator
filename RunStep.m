% CELESTIAL OBJECT ENGINE
%
% RunStep(CelestialObjects, TimeStep);
 
%function [NewCelestialObjects] = RunStep(CelestialObjects, TimeStep)
	%CopyObjs = zeros(length(CelestialObjects), 7);
	%idx = 1;
	%for Obj = CelestialObjects
		%Fx, Fy = CalculateForces(CelestialObjects, Obj(2), Obj(3), Obj(4));
		%Ax = Fx / Obj(4);
		%Ay = Fy / Obj(4);
		%Obj(6) = Obj(6) + (Ax * TimeStep);
		%Obj(7) = Obj(7) + (Ay * TimeStep);
		%Obj(2) = Obj(2) + (Obj(6) * TimeStep);
		%Obj(3) = Obj(3) + (Obj(7) * TimeStep);
		%CopyObjs(idx) = Obj;
		%idx = idx + 1;
	%end
	%NewCelestialObjects = RemoveCollisions(CopyObjs);	
%end
function [NewCelestialObjects] = RunStep(CelestialObjects, TimeStep)
	CopyObjs = zeros(length(CelestialObjects), 7);
	idx = 1;
	for Obj = CelestialObjects %%Zack Edited
		[Fx Fy] = CalculateForces(CelestialObjects, Obj(1), Obj(2), Obj(3)); 
		Ax = Fx / Obj(1);
		Ay = Fy / Obj(2);
		CelestialObjects(idx,5) = CelestialObjects(idx, 5) + (Ax * TimeStep);
		CelestialObjects(idx,5) = CelestialObjects(idx,5) + (Ay * TimeStep);
        CelestialObjects(idx,1) = CelestialObjects(idx,1) + (CelestialObjects(idx,5) * TimeStep);
		CelestialObjects(idx,2) = CelestialObjects(idx,2) + (CelestialObjects(idx,5) * TimeStep);
		idx = idx + 1;
	end
	NewCelestialObjects = RemoveCollisions(CelestialObjects);
  
