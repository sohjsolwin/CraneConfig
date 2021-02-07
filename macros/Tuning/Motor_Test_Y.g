; Motor Test -- Test Y Axis
G91                                     	; Relative Positioning(toolhead)
M564 H0									; Allow movement without homing.
M302 P1                                   	; Allow Cold Extrusion

; Toolhead Movement Axis Tests.
; Y test.
G1 H1 Y-9999.00 F6000                     	; Move X in reverse slowly until endstop is triggered.
G1 H2 Y20 F4000                         	; Reverse X Motor Direction momentarily to confirm endstop.
