; machine_bedmesh.g
; January 5, 2021

; This file defines the extent and density of the bed mesh.
; The way this is calculated is by taking the max X, subtract the Z probe X offset
; from it and use that as the second of the X values.
; For example, if max X is 383 and the Z probe X offset is -43, the parameter would be X0:340
; For the Y parameter, make sure you don't start too far to the front or you will hit
; the bed clips with the hot end.  Anywhere between 35 and 40 is probably a good start.
; The S parameter defines the distance between two mesh points in mm.

;M557 X0:350 Y20:295 S24 ; Define heightmap mesh
M557 X6:350 Y20:295 S20 ; Define High Res heightmap mesh
;M557 X2:350 Y20:295 S35 ; Define Low Res heightmap mesh
;M557 X2:350 Y20:295 S70 ; Define Ultra Low Res heightmap mesh
;M557 X27:353 Y0:295 S295 ; Define 4 corner heightmap mesh
M376 H5 ; Define height(mm) over which to taper off heightmap compensation



G29 S1 P"0:/sys/heightmap.csv" ; Load heightmap after power cycle
