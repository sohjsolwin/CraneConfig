; homeall.g
; called to home all axes
;

; Front left corner is (0,0)

; ============ HOME X & HOME Y ==============

M98 P"../Common/homex.g" ; Run the homex.g file, also homes the Y axis

; ============ HOME Z ==============

M98 P"../Common/homez.g" ; Run the homez.g file
G29 S1 ; Enable mesh compensation