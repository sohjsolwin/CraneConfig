; tools.g
; Creates initial tool setup.
; Created by sohjsolwin
; for the Crane Selectra
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