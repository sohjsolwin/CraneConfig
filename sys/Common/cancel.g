; cancel.g
;
;This file is executed when the user cancels a print after pausing it.
M140 S0                      ; Heated Bed Off
M104 S0                      ; Extruder Off
G91                          ; Relative positioning
G1 Z+0.5 X-20 Y-20 F9000 ; Move Z up, Shift X/Y,
G90                          ; Absolute positioning
G28 X5                       ; Move X to min Endstops
G1 Y220                      ; Move Bed Forward for Access
M106 P1 S0                   ; Tool Fans Off
M84                          ; Steppers Off
