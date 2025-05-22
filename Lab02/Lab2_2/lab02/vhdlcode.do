view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 400ps sim:/lab02/x1 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ps -endtime 800ps Edit:/lab02/x1 
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ps -dutycycle 50 -starttime 0ps -endtime 800ps sim:/lab02/x2 
WaveCollapseAll -1
wave clipboard restore
