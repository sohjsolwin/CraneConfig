; resume.g
; called before a print from SD card is resumed
;
; generated by RepRapFirmware Configuration Tool on Tue Jun 26 2018 13:03:45 GMT-0400 (EDT)


M291 P"Resuming Print" R"Print Status" S1  T2

G1 R1 X0 Y0 Z5 F6000 ; go to 5mm above position of the last print move
G1 R1 X0 Y0          ; go back to the last print move
M83                  ; relative extruder moves
G1 E5 F3600         ; extrude 5mm of filament