; tools.g
; Creates initial tool setup.
;

; Tools
M563 P0 D0:1:2:3 H1 F1
M567 P0 E0.25:0.25:0.25:0.25
G10 P0 X0 Y0 Z0
G10 P0 S0

M140 S0
T0

M404 N1.75 D0.35 ; Set Filament Diameter and Nozzle