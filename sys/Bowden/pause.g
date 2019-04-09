; pause.g
; called when a print from SD card is paused
;
; generated by RepRapFirmware Configuration Tool on Tue Jun 26 2018 13:03:45 GMT-0400 (EDT)


M291 P"Pausing Print" R"Print Status" S0  T2
M83            ; relative extruder moves
G1 E-10 F3600  ; retract 10mm of filament
G91            ; relative positioning
G1 Z25 F360     ; lift Z by 5mm
G90            ; absolute positioning
G1 X0 Y270 F6000 ; go to X=0 Y=270