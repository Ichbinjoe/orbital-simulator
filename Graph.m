function [] =  Graph(CelestialObjects, Graph)
	MinX, MaxX, MinY, MaxY = GetBounds(CelestialObjects);
	MinX, MinY, MaxX, MaxY = AdjustAspectRatio(MinX, MinY, MaxX, MaxY);
	set(Graph, 'XLim', [MinX MaxX]);
	set(Graph, 'YLim', [MinY MaxY]);
	
	Xs, Ys = PlotCircle(CelestialObjects(:,2), CelestialObjects(:,3), CelestialObjects(:,5), 100);
	axes(Graph);
	plot(Xs, Ys);	
end


