; thermal.g
; Created by PrintM3D
; for the Crane Quad

; This file declares heater and fan settings.
; Heaters
M305 P0 T100000 B4006		         ; Thermistor Config for NTC 100k
M143 H0 S120                     ; Set temperature limit for heater 0 to 120C
M305 P1 T100000 B3988        	   ; Thermistor Config for NTC 100k
M143 H1 S265                     ; Set temperature limit for heater 1 to 265C


; Fans
; For Crane Quad: F0 is Heatsink Fan, F1 is Part Cooling fans, F2 is Case Fan
M106 P0 T45 H1 F50                ; Set Heatsink Fan F0 to Thermostatic
M106 P1 H-1 F50                   ; Set Part Cooler Fans F1 to Gcode Control
M106 P2 S0.8 F50                  ; Set case fan always on at 80%

; Heater Model Parameters
M307 H0 A90.0 C700.0 D10.0 S1.00 V0.0 B1

;M307 H1 A245.3 C121.0 D3.4 S0.18 V24.4 B0
;M307 H1 A254.9 C114.1 D4.2 S0.20 V24.3 B0
;M307 H1 A531.1 C115.2 D7.1 S0.40 V24.2 B0
;M307 H1 A733.5 C119.6 D6.8 S0.50 V24.2 B0
M307 H1 A626.0 C111.6 D6.9 S0.50 V24.3 B0
;M307 H1 A1086.5 C110.4 D7 S0.75 V24.1 B0

M307 H2 A340.0 C140.0 D5.5 S1.00 V0.0 B0