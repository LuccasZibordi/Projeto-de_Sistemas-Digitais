view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 50ps -step 1 -repeat 1 -range 3 0 -starttime 0ps -endtime 1000ps sim:/lab08/SW 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
