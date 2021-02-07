; machine_fans.g
; December 16, 2019
; This file is used to configure all the system fans in the printer.

;M950 F1 C"fan1" Q500
;M106 C"Extra Fan" P1 S0 H-1 L0.3 ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned off, Minimum fan value 0.3, Speed 100%