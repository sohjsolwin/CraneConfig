; machine_heater_extrusion.g
; May 18, 2020
; This file is used to configure all the values for the hot end heater. Added R4700 to M305 for WiFi board.

; ---------- SECTION ----------
; This section sets the thermistor behavior for the hot ends.
; H0 is bed
; H1 is main hot end
; H2 is additional hot end

M308 S1 P"e0temp" Y"thermistor" T100000 B4725 C7.06e-8 R4700 ; Define Extruder Thermistor
M950 H1 C"e0heat" T1 ; heater 1 uses the e0heat pin and sensor 1

M570 H1 P15 T30                                 ; Allow heater to be off by as much as 30C for 15 seconds

M307 H1 A389.1 C205.7 D3.1 S1.00 V24.1 B0       ; ADC Correction
M302 P1                                         ; Allow Cold extrudes


; ---------- SECTION ----------
; This section sets the maximum temperatures for the hot ends.
; This should only be changed if hardware modifications have been made that
; can handle the higher temperatures!
; FIRE HAZARD - USE AT YOUR OWN RISK!!!!!!
M143 H1 S286 ; Set maximum heater temperature to 285C for hot end 1