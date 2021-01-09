; macine_general.g
;
; The file sets initial movement phases and sets compatibility to RRFW.
; General preferences

M564 S1 H1                     ; Enables Homing Requirement For Motor Activation and set axes limits
G90                            ; Send absolute coordinates...
M83                            ; ...but relative extruder moves
M555 P1                        ; Set firmware compatibility to look like RepRapFirmare

;Configure LCD Display (Maestro Only)
;M918 P1 E4
