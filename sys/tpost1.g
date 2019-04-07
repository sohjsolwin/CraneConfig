; tpost1.g
; called after tool 1 has been selected
;
; generated by RepRapFirmware Configuration Tool on Tue Jun 26 2018 13:03:45 GMT-0400 (EDT)
; Wait for set temperatures to be reached

M291 P"Waiting for Tool 1 to heat" R"Tool Change" S0  T2
M116 P1


; //Init_Retract = 60
; //Extra_Retract = 2.5
; //Splitter_Retract = 100

; Tip shaping occurs in TFree

;///// Channel select /////
;T[selector_id] ;If using expansion board this should be T100, if using E0 and E1 combo, this should be T1.
M567 P1 E1.0:0.0                  ; Set mix ratio to 100% Selector

G90                               ;Absolute mode based on entire Selectra range
;// New position move \\
G1 E10 F300

;// Position Label \\
M291 P"Selectra Channel 2 selected" R"Tool Change" S0  T2

;// ID chime for selected channel \\
M300 S440 P100
G4 P50
M300 S440 P200

M567 P1 E0.0:1.0                ; Set mix ratio to 100% driver

M98 P0:/sys/selectra/Reload.g

;;;;;;;;TC END AND PRIME START ;;;;;;;;

M83                             ; Extruder to Relative
G90                             ; Absolute Movement
G92 E0                          ; Zero E

G1 X12 Y214.6                     ; Get in position for wipe tower.
M98 P0:/sys/selectra/WipeTowerAndPrime.g

G90                             ; Absolute
G92 E0                          ; Zero E

;;;;;;;;; PRIME END ;;;;;;;;;

;/// Return to previous position \\\
;G1 X[next_position_x] Y[next_position_y] F6000
G1 R2 X0 Y0 F6000
;G1 Z[next_position_z] E((2[extra_retract])-0.5)
G1 R2 Z0 E4.5
G92 E0                          ; Zero E
;////INJECTION COMPLETE\\\\

M291 P"Tool change complete" R"Tool Change" S0  T2