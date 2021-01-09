; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
;


M291 P"Stopping Print" R"Print Status" S0  T2

M400			         ; Wait for movement buffer to clear.
M83                ; relative extruder moves
G1 E-1 F3600       ; retract 1mm of filament
G91                ; relative positioning
M220 S100		       ; Reset Speed Factor to 100%
M221 S100		       ; Reset Extrusion Factor to 100%
G1 Z5 S1 F360      ; lower Z by 5mm, or until Z-limit is reached
G90                ; absolute positioning
G1 X350 Y350 F3000 ; go to X=350 Y=350 to move head out of the way (usually)
M98 P"homez.g"     ; move Z to the bottom

; Turn off systems
G10 P0 S0 R0 ; turn off hotend
M106 S0      ; turn off fans
M140 S0      ; turn off bed
M84          ; switch off all steppers
