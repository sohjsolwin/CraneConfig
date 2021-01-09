; resume.g
; called before a print from SD card is resumed


M291 P"Resuming Print" R"Print Status" S0  T2

G1 R1 X0 Y0 Z5 F6000 ; go to 5mm above position of the last print move
G1 R1 X0 Y0          ; go back to the last print move
M83                  ; relative extruder moves
G1 E2 F3600          ; extrude 5mm of filament