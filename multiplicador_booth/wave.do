view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 000010 -range 5 0 -starttime 0ps -endtime 1000ps sim:/topo/m 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 000010 -range 5 0 -starttime 0ps -endtime 1000ps sim:/topo/mult 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
