; tfree3.g
; called when tool 3 is freed
;
; generated by RepRapFirmware Configuration Tool on Tue Jun 26 2018 13:03:45 GMT-0400 (EDT)



M291 P"Freeing Tool 3" R"Tool Change" S0  T2
M567 P3 E0.0:1.0                ; Set mix ratio to 100% Driver
G92 E0                          ;Zero E
M98 P0:/sys/selectra/ShapeTipAndRetract.g    ; Call Shape Tip Module

M567 P3 E1.0:0.0                  ; Set mix ratio to 100% Selector

G90                               ;Absolute mode based on entire Selectra range

M291 P"Moving to Channel 3/T2" R"Tool Change" S0  T2
G92 E30
;// Position ID \\
G1 E20 F300	;Starting condition is ALWAYS T2 (Return to center on TFree)