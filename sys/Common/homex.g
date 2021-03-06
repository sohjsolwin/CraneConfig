; homex.g
; called to home the X axis
;

G91               ; relative positioning
G1 Z5 F600 S2     ; lift Z prior to X Move.

G1 S1 X-305 F6000 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F900        ; go back a few mm
G1 S1 X-305 F900  ; move normally to X axis endstop once more (second pass)
G1 X15             ; Move to Corner
G92 X10            ; X is at 10
G1 Z-5 F600 S2    ; lower Z again

G90               ; absolute positioning
