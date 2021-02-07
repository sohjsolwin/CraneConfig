; machine_heater_bed.g
; May 18, 2020
; This file is used to configure all the values for the bed heater.

; ---------- SECTION ----------
; This section sets the thermistor behavior for the bed.
M308 S0 P"bed_temp" Y"thermistor" T100000 B4138 C0 R4700 ; Set thermistor + ADC parameters for heater 0, For heated bed thermistor WiFi.
M950 H0 C"bed_heat" T0 ; Heater 0 uses the bed_heat pin, sensor 0

M570 H0 P25 T30                           ; Allow heater to be off by as much as 30C for 25 seconds

M140 P0 H0 ; Set heated bed 0 to use heater 0

M307 H0 A65.2 C287.7 D6.1 S1.00 V24 B0 ; ADC Correction


; ---------- SECTION ----------
; This section sets the maximum temperatures for the bed.
; This should only be changed if hardware modifications have been made that
; can handle the higher temperatures!
; FIRE HAZARD - USE AT YOUR OWN RISK!!!!!!
M143 H0 S121 ; Set maximum bed temperature to 120 C (Duet treats this as an exclusive maximum)
