view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1111 -range 3 0 -starttime 0ps -endtime 500ps sim:/comparador/x 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0000 -range 3 0 -starttime 0ps -endtime 500ps sim:/comparador/y 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1111 -range 3 0 -starttime 500ps -endtime 1000ps Edit:/comparador/x 
wave modify -driver freeze -pattern constant -value 1111 -range 3 0 -starttime 500ps -endtime 1000ps Edit:/comparador/y 
wave modify -driver freeze -pattern constant -value 1111 -range 3 0 -starttime 1000ps -endtime 1500ps Edit:/comparador/y 
wave modify -driver freeze -pattern constant -value 0000 -range 3 0 -starttime 1000ps -endtime 1500ps Edit:/comparador/x 
WaveCollapseAll -1
wave clipboard restore
