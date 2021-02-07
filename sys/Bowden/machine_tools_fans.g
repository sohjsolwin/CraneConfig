; machine_tools_fans.g
; This file is used to configure all tools fans in the printer.

; Tool Fans Setup
M950 F0 C"fan0" Q500 ; previously Q250
M106 C"Part Fan" P0 S0 H-1 L0.3; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off, Minimum fan value 0.3, Speed 100%

M950 F2 C"fan2" Q500  
M106 C"Hot Fan" P2 S0 H1 T60:150 L0.3 ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on, Minimum fan value 0.3, Speed 100%
