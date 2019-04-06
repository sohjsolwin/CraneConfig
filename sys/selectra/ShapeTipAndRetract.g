


M291 P"Shaping filament tip" R"Tool Change" S0  T2
;/// Move nozzle to safe zone & start pump \\\
G91                             ; Releative Movement
;G1 Z1.5 E-([init_retract]+[extra_retract]) F9000	;Lift nozzle and retract
G1 Z1.5 E-62.5 F9000            ;Lift nozzle off part and retract
G90                             ; Absolute movement


;;TODO: Determine if diffrent ooze areas are needed. 
G1 X5 Y209.00 F9000	            ;Go to ooze area

;/// Perform tip shaping \\
G92 E0                          ;Zero E
G90                             ; Absolute Movement
;G1 Z[next_position_z] X25 E[init_retract]F8500 ;Undo nozzle lift, 
;----
G1 R2 Z0                        ; Undo nozzle lift
G1 X25 E60 F8500                ; Shape tip
;---- 
G91                             ;Relative mode

;// Pull into splitter \\
G92 E0                          ;Zero E
;G1 X20 E[splitter_retract] F280 ;;;;;;;;;;MUST BE LOW F 
G1 X20 E100  F280               ;;;;;;;;;;MUST BE LOW F 
G92 E0                          ; Zero E
M84 E                           ; Stop Idle Hold
;G-Sum -([init_retract]+[splitter_retract]+[extra_retract])	;Filament distance from nozzle tip at this point
; G-Sum -162.5

; Final position: X:45 Y:ooze Z:start