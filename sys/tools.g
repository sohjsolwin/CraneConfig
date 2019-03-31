; tools.g
; Creates initial tool setup.
; Created by sohjsolwin
; for the Crane Selectra
;

; Tools
; Tool 0
M563 P0 D2:3 H1 F1
M567 P0 E0:1.0
G10 P0 X0 Y0 Z0 ; Set tool axis offsets
G10 P0 S0 ; Set initial temperatures

; Tool 1
M563 P1 D2:3 H1 F1
M567 P1 E0:1.0
G10 P1 X0 Y0 Z0
G10 P1 S0

; Tool 2
M563 P2 D2:3 H1 F1
M567 P2 E0:1.0
G10 P2 X0 Y0 Z0
G10 P2 S0

; Tool 3
M563 P3 D2:3 H1 F1
M567 P3 E0:1.0
G10 P3 X0 Y0 Z0
G10 P3 S0

; Tool 4
M563 P4 D2:3 H1 F1
M567 P4 E0:1.0
G10 P4 X0 Y0 Z0
G10 P4 S0


M140 S0 ; Set bed temperature to 0

M291 P"Ensure Selectra is in position for Channel 2" R"Ensure Selectra Position" S2

T0 ; Select tool 0 (will run tfree0 -> tpre0 -> tpost0)

;Example
;M563 P70 D0 H1 ; Define tool 70
;G10 P70 X0 Y0 Z0 ; Set tool axis offsets
;G10 P70 R0 S230 ; Set initial active (230C) and standby (off) temperatures