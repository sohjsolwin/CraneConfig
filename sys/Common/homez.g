; homez.g
; called to home the Z axis
;

; ============= PRE-HOMING =====================
M913 Z60 ; drop Z motor currents to 60%

; Relative positioning
G91
; Provide Z height clearance
G0 Z-5 F250 H1
; Absolute positioning
G90

; Ignore Machine boundaries
M564 H0 S0

; Turn off bed leveling during homing
G29 S2 ; Does the same as M561!
G29 S2 ; Do it twice because once just isn't enough

; Switch to Origin Tool
T0

; Relative positioning
G91

; Provide Z height clearance
G0 Z5 F250 H1


; ============ HOME Z ==============

; Rapid Z until limit switch triggers
G0 Z450 F1500 H1

; Back off to release limit switch
G0 Z-5 F500

; Slow advance to trigger limit switch
G0 Z20 F120 H1

M98 P"0:/sys/Common/machine_zendstop.g" ; Set Z Endstop height

; ============ Post-Homing ==============

; Revert to absolute coordinates
G90

; Re-enable mesh leveling
G29 S1 P"0:/sys/heightmap.csv"

M913 Z100 ; Z motor currents to 100%

M98 P"0:/sys/Common/machine_axisdimension.g" ; Set Axes Limits

; Stop movement across limits, enable boundaries, homing requirement
M564 H1 S1
