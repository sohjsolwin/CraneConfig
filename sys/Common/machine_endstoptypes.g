; machine_endstoptypes.g
; July 17, 2018

; This file defines what type of end-stops the printer is using.
; Make sure you set the correct end-stop type or your printer will grind the belts trying to reach an end-stop that isn't responding!!!

M574 X2 S1 P"xstop" ; Set x end-stops types (active high, applied to X)
M574 Y2 S1 P"ystop" ; Set y end-stops types (active high, applied to Y)
M574 Z2 S1 p"zstop" ; Set z end-stops types (active high, applied to Z)
