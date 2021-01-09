; machine_heater_bed.g
; May 18, 2020
; This file is used to configure all the values for the bed heater.

; ---------- SECTION ----------
; This section sets the thermistor behavior for the bed.
M570 H0 P25 T30                           ; Allow heater to be off by as much as 30C for 25 seconds
; M305 P0 T100000 B4138 C0 R2200            ; Set thermistor + ADC parameters for heater 0, For heated Bed thermistor Maestro.
M305 P0 T100000 B4138 C0 R4700            ; Set thermistor + ADC parameters for heater 0, For heated Bed thermistor WiFi.
;M307 H0 A78.9 C265.2 D9.5 S1.00 V24.0 B0  ; Forcing heated bed PID control after power-cycle. Basic bed heating auto-tune
M307 H0 A65.2 C287.7 D6.1 S1.00 V24 B0


; ---------- SECTION ----------
; This section sets the maximum temperatures for the bed.
; This should only be changed if hardware modifications have been made that
; can handle the higher temperatures!
; FIRE HAZARD - USE AT YOUR OWN RISK!!!!!!
M143 H0 S121 ; Set maximum bed temperature to 120 C (Duet treats this as an exclusive maximum)
