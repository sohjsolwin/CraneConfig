

;/// Preform re-load \\\
G91                             ; Relative
G92 E0                          ; Zero E
G1 E1 F8500                     ;Kick
;G1 E(([splitter_retractA]+[extra_retract])-[init_retract]) ;Get past splitter
G1 E42.5                        ;Get past splitter
;G1 X28.88 E[init_retract] F210		;Get into hotend
G1 X28.88 E60 F210		;Get into hotend
;Sum 162.5

; Position After: X:45 Y:ooze Z:start

