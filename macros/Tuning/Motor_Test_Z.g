; Motor Test -- Test Z Axis
G91                                     	; Relative Positioning(toolhead)
M564 H0									; Allow movement without homing.
M302 P1                                   	; Allow Cold Extrusion

; Toolhead Movement Axis Tests.
; Z test.
G1 H1 Z-9999.00 F1200                     	; Move X in reverse slowly until endstop is triggered.
G1 H2 Z20 F800                            	; Reverse X Motor Direction momentarily to confirm endstop.
