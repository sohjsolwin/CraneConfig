;;If you use either a Duet board or RepRap firmware on another board,
; you should change the "M907" m code as found in the base script to "M906".
;
;M907 is used in Marlin firmware to adjust the stepper current. For RepRap
; firmware you should use M906 to get the same result.
;
;Have a look at the BASE SCRIPT along side the G-UNIT script. The one is a modification of the other, but should give you a very good idea whats going on. 
;
;Variable defines and some explination:
;
;[reload_current] 
;     This is the current setting to use with the retract and advance of filament. Range is 0-2000
;[const_current] 
;     This is the constant working current while printing. 0-2000
;[init_retract] 
;     Initial retract, pulls filament back a tiny bit to prevent oozing/stringing. Measured in milimeter
;[extra_retract] 
;     Tiny bit of extra movement to break or build pressure. Measured in milimeter
;[splitter_retract] 
;     Filament park position inside the splitter as approximately measured from nozzle tip to filament tip. Measured in milimeter
;[selector_current] 
;     Current adjustment fo the selector stepper. 0-2000
;[selector_id] 
;     Depending on the setup, this value must reflect the channel identifier as used to identify and energize the selection stepper. For the original Selectra setup running on E0 and E1 stepper outputs, this value must return to "1" so that "T1" is printed in the script. If a user uses an expansion board, the value should be whatever was set up in the firmware. In my case, I setup my firmware to react to "T100". 
;[selector_steps] 
;     This is the steps per millimeter of the selector stepper.
;[feeder_steps] 
;     This is the steps per millimenter of the main feeder stepper.
;
;------
;
;There are some other things in the BASE SCRIPT example which are ONLY related to Simplify3d. These values should not be user adjustable since they are read by Simplify3D when silcing is done. They are:
;
;[next_position_x]
;[next_position_y]
;[next_position_z]
;
;and ofcourse everything inside the {} brackets 
;; THIS IS THE BASE SCRIPT WITH PLACEHOLDERS ;;
;;; SIMPLIFY 3D VER. ;;;
;;; FOR PRUSA I3 BED ;;;
;;;; FOR LINEAR CAM ;;;;
;;; FOR TR8 CAM SCREW ;;
;;;;;;;TC START;;;;;;;
M907 E[reload_current]	;Set E axis current for retraction
G92 E0				;Zero E

;/// Move nozzle to safe zone & start pump \\\
G91
G1 Z1.5 E-([init_retract]+[extra_retract]) F9000	;Lift nozzle and retract
G90
{IF NEWTOOL=0}G1 X5 Y209.00 F9000	;Go to ooze area
{IF NEWTOOL=1}G1 X5 Y208.60 F9000	;Go to ooze area
{IF NEWTOOL=2}G1 X5 Y208.20 F9000	;Go to ooze area
{IF NEWTOOL=3}G1 X5 Y207.80 F9000	;Go to ooze area
{IF NEWTOOL=4}G1 X5 Y207.40 F9000	;Go to ooze area
M82

;/// Perform tip shaping \\
G92 E0 		;Zero E
G90
G1 Z[next_position_z] X25 E[init_retract]F8500 ;Undo nozzle lift, 
G91			;Relative mode

;// Pull into splitter \\
G92 E0 		;Zero E
G1 X20 E[splitter_retract]  F280 ;;;;;;;;;;MUST BE LOW F 
G92 E0
M84 E
;G-Sum -([init_retract]+[splitter_retract]+[extra_retract])	;Filament distance from nozzle tip at this point

;///// Channel select /////
T[selector_id] ;If using expansion board this should be T100, if using E0 and E1 combo, this should be T1.

M92 E[selector_steps]		;Set E1 steps/mm for selector cam
M907 E[selector_current]	;Set amps for selector stepper

G90			;Absolute mode based on entire Selectra range
;// Position ID \\
G92 E0 	;Starting condition is ALWAYS T0
;// Position ID \\
{IF OLDTOOL=0}G92 E0
{IF OLDTOOL=1}G92 E10
{IF OLDTOOL=2}G92 E20
{IF OLDTOOL=3}G92 E30
{IF OLDTOOL=4}G92 E40
;// New position move \\
{IF NEWTOOL=0}G1 E0 F2000
{IF NEWTOOL=1}G1 E10 F2000
{IF NEWTOOL=2}G1 E20 F2000
{IF NEWTOOL=3}G1 E30 F2000
{IF NEWTOOL=4}G1 E40 F2000

;// Position Label \\
{IF OLDTOOL=0};FROM CHANNEL-1
{IF NEWTOOL=0};TO CHANNEL-1
{IF OLDTOOL=1};FROM CHANNEL-2
{IF NEWTOOL=1};TO CHANNEL-2
{IF OLDTOOL=2};FROM CHANNEL-3
{IF NEWTOOL=2};TO CHANNEL-3
{IF OLDTOOL=3};FROM CHANNEL-4
{IF NEWTOOL=3};TO CHANNEL-4
{IF OLDTOOL=4};FROM CHANNEL-5
{IF NEWTOOL=4};TO CHANNEL-5

;// ID chime for selected channel \\
{IF NEWTOOL=0}M300 S440 P200
{IF NEWTOOL=1}M300 S440 P100
{IF NEWTOOL=1}G4 P50
{IF NEWTOOL=1}M300 S440 P200
{IF NEWTOOL=2}M300 S440 P100
{IF NEWTOOL=2}G4 P50
{IF NEWTOOL=2}M300 S440 P100
{IF NEWTOOL=2}G4 P100
{IF NEWTOOL=2}M300 S440 P200
{IF NEWTOOL=3}M300 S440 P100
{IF NEWTOOL=3}G4 P50
{IF NEWTOOL=3}M300 S440 P100
{IF NEWTOOL=3}G4 P100
{IF NEWTOOL=3}M300 S440 P100
{IF NEWTOOL=3}G4 P50
{IF NEWTOOL=3}M300 S440 P200
{IF NEWTOOL=4}M300 S440 P100
{IF NEWTOOL=4}G4 P50
{IF NEWTOOL=4}M300 S440 P100
{IF NEWTOOL=4}G4 P100
{IF NEWTOOL=4}M300 S440 P100
{IF NEWTOOL=4}G4 P50
{IF NEWTOOL=4}M300 S440 P100
{IF NEWTOOL=4}G4 P100
{IF NEWTOOL=4}M300 S440 P200

M84 E			;Disable E axis ready for switch	

;/// Preform re-load \\\
{IF NEWTOOL=0}T0
{IF NEWTOOL=1}T1
{IF NEWTOOL=2}T2		;Mark reload for visualisation only
{IF NEWTOOL=3}T3
{IF NEWTOOL=4}T4
G91
M92 E[feeder_steps]	;Reset to feeder steps/mm (per experiment)
M907 E[reload_current]		;Set current again 
G92 E0
G1 E1 F8500	;Kick
G1 E(([splitter_retract]+[extra_retract])-[init_retract]) ;Get past splitter
G1 X28.88 E[init_retract] F210		;Get into hotend
;Sum 582
M907 E[const_current]		;Set amps for constant 

;;;;;;;;TC END AND PRIME START ;;;;;;;;

M83 
G90
G92 E0

{IF NEWTOOL=0}G1 X240 E10 F4000.000
{IF NEWTOOL=0}G1 Y207 
{IF NEWTOOL=0}G1 X10 E12
{IF NEWTOOL=0}G1 Y205
{IF NEWTOOL=0}G1 X240 E12
{IF NEWTOOL=0}G1 Y203 E-20
{IF NEWTOOL=0}G1 E20
{IF NEWTOOL=0}G1 X10 E12
{IF NEWTOOL=0}G1 Y201 E-20
{IF NEWTOOL=0}G1 E20
{IF NEWTOOL=0}G1 X240 E10
{IF NEWTOOL=0}G1 Y199
{IF NEWTOOL=0}G1 X10 E9

{IF NEWTOOL=1}G1 X242 E10 F4000.000
{IF NEWTOOL=1}G1 Y206.60 
{IF NEWTOOL=1}G1 X12 E12
{IF NEWTOOL=1}G1 Y204.60
{IF NEWTOOL=1}G1 X242 E12
{IF NEWTOOL=1}G1 Y202.60 E-20
{IF NEWTOOL=1}G1 E20
{IF NEWTOOL=1}G1 X12 E12
{IF NEWTOOL=1}G1 Y200.60 E-20
{IF NEWTOOL=1}G1 E20
{IF NEWTOOL=1}G1 X242 E10
{IF NEWTOOL=1}G1 Y198.60
{IF NEWTOOL=1}G1 X12 E9

{IF NEWTOOL=2}G1 X244 E10 F4000.000
{IF NEWTOOL=2}G1 Y206.2 
{IF NEWTOOL=2}G1 X14 E12
{IF NEWTOOL=2}G1 Y204.2
{IF NEWTOOL=2}G1 X244 E12
{IF NEWTOOL=2}G1 Y202.2 E-20
{IF NEWTOOL=2}G1 E20
{IF NEWTOOL=2}G1 X14 E12
{IF NEWTOOL=2}G1 Y200.2 E-20
{IF NEWTOOL=2}G1 E20
{IF NEWTOOL=2}G1 X244 E10
{IF NEWTOOL=2}G1 Y198.2
{IF NEWTOOL=2}G1 X14 E9

{IF NEWTOOL=3}G1 X246 E10 F4000.000
{IF NEWTOOL=3}G1 Y205.8 
{IF NEWTOOL=3}G1 X16 E12
{IF NEWTOOL=3}G1 Y203.8
{IF NEWTOOL=3}G1 X246 E12
{IF NEWTOOL=3}G1 Y201.8 E-20
{IF NEWTOOL=3}G1 E20
{IF NEWTOOL=3}G1 X16 E12
{IF NEWTOOL=3}G1 Y199.8 E-20
{IF NEWTOOL=3}G1 E20
{IF NEWTOOL=3}G1 X246 E10
{IF NEWTOOL=3}G1 Y197.8
{IF NEWTOOL=3}G1 X16 E9

{IF NEWTOOL=4}G1 X248 E10 F4000.000
{IF NEWTOOL=4}G1 Y205.4 
{IF NEWTOOL=4}G1 X18 E12
{IF NEWTOOL=4}G1 Y203.4
{IF NEWTOOL=4}G1 X248 E12
{IF NEWTOOL=4}G1 Y201.4 E-20
{IF NEWTOOL=4}G1 E20
{IF NEWTOOL=4}G1 X18 E12
{IF NEWTOOL=4}G1 Y199.4 E-20
{IF NEWTOOL=4}G1 E20
{IF NEWTOOL=4}G1 X248 E10
{IF NEWTOOL=4}G1 Y197.4
{IF NEWTOOL=4}G1 X18 E9

;SUM = 65

M82
G92 E0
G1 X[next_position_x] E-([extra_retract]-0.5) ;Wipe
G91
G1 X5.000 E-[extra_retract] F10000
G1 Z1.500
G90
G92 E0

;;;;;;;;; PRIME END ;;;;;;;;;

;/// Return to previous position \\\
G1 X[next_position_x] Y[next_position_y] F6000
G1 Z[next_position_z] E((2[extra_retract])-0.5)
G92 E0
;////INJECTION COMPLETE\\\\