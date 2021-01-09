; machine_tools.g

; Tool Setup

; Main Tool T0
M563 P0 D0 H1 F0 S"Main Extruder" ; Define main tool
G10 P0 X0 Y0 Z0                   ; Set axis offsets
G10 P0 R0 S0                      ; Set active (S0) & standby temp (R0) at 0.

T0 ; Select tool 0 (will run tfree0 -> tpre0 -> tpost0)

;Example
;M563 P70 D0 H1 ; Define tool 70
;G10 P70 X0 Y0 Z0 ; Set tool axis offsets
;G10 P70 R0 S230 ; Set initial active (230C) and standby (off) temperatures

