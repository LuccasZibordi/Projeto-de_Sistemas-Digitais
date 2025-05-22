view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 50ps -step 1 -repeat 1 -range 3 0 -starttime 0ps -endtime 800ps sim:/comparador/x 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 1111 -endvalue 0000 -type Range -direction Down -period 50ps -step 1 -repeat 1 -range 3 0 -starttime 0ps -endtime 800ps sim:/comparador/y 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
