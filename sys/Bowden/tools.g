; tools.g
; Creates initial tool setup.
;

; Tools
; Tool 0
M563 P0 D3 H1 F1
M567 P0 E1
G10 P0 X0 Y0 Z0 ; Set tool axis offsets
G10 P0 S0 ; Set initial temperatures

M140 S0 ; Set bed temperature to 0

T0 ; Select tool 0 (will run tfree0 -> tpre0 -> tpost0)

;Example
;M563 P70 D0 H1 ; Define tool 70
;G10 P70 X0 Y0 Z0 ; Set tool axis offsets
;G10 P70 R0 S230 ; Set initial active (230C) and standby (off) temperatures

M404 N1.75 D0.4 ; Set Filament Diameter and Nozzle

;Set Firmware Retract (For G10/G11)

M207 S6.5 R0 F1500 T1500 Z 0.5 ; Retract 6.5mm, unretract 0 extra, at 1500mm/min speeds, Zhop extra 0.5