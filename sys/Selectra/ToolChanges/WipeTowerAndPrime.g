

M291 P"Performing purge" R"Tool Change" S0  T2
G91                          ;Set to Relative

; --- Wipe Tower

G1 X205 E10 F4000.000
G1 Y-2 
G1 X-205 E12
G1 Y-2
G1 X205 E12
G1 Y-2 E-20
G1 E20
G1 X-205 E12
G1 Y-2 E-20
G1 E20
G1 X205 E10
G1 Y-2
G1 X-205 E9


;SUM = 65

M82                             ; Extruder to Absolute Mode
G92 E0                          ; Zero E
;G1 X[next_position_x] E-([extra_retract]-0.5) ;Wipe
G1 R2 X0 E-2 ;Wipe - Return to last saved tool position in X axis
G91                             ; Relative
;G1 X5.000 E-[extra_retract] F10000
G1 X5.000 E-2.5 F10000
G1 Z1.500