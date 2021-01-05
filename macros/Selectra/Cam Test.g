;;; FOR TR8 CAM ONLY ;;;
;;; FOR MODE 1 SELECTRA ;;;
;; ALL STP/MM VALUES ARE FOR 1/16TH MICRO STEPPING ;;
;; WILL DISABLE VOLUMETRIC EXTRUSION ;;

;;;;;;;POSITION SET START;;;;;;;

;;; STARTING TUNE ;;;
M300 S440 P200
M300 S660 P250
M300 S880 P300

M302 S0		;Allow cold extrusion
M200 D0		;Disable volumetric extrusion
M84 E			;Disable E stepper, ready for switch
T1			;Enable E1 
M907 E1200		;Set E axis current
G91			;Relative mode
M83			;E relative mode (Marlin only)
G92 E0		;Set E position as zero
M92 E400		;Set E steps to 400/mm for TR8 screw
G4 S1			;One second delay before test

;Starting condition is ALWAYS channel 1 (cam at top)

;///// Channel select /////
G92 E0
G1 E10 F600 	;Select channel 2
G4 S0.5		;Half second pause before proceeding

;///// Channel select /////
G92 E0
G1 E10 		;Select channel 3
G4 S0.5

;///// Channel select /////
G92 E0
G1 E10 		;Select channel 4
G4 S0.5


;///// Channel select /////
G92 E0
G1 E10 		;Select channel 5
G4 S0.5

;///// Channel select /////
G92 E0
G1 E-40 		;Go back to channel 1
M84 E			;Disable E axis ready for switch	
M907 E750		;Reset current to a lower value

;;; ENDING TUNE ;;;
M300 S875 P300
M300 S655 P250
M300 S438 P400

T0			;Enable E0 on expansion board
M92 E134.58	;Reset filament drive steps/mm

;/////////// FIRST CHANNEL ENGAGED \\\\\\\\\