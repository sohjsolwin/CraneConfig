; ---------- SECTION ----------
; Set the mode and XYZ scaling.  X and Z are usually 1.0, Y is calculated based of your calibration method
M669 K1             ; Select CoreXY kinematics (RRF 2.03 and later)
M579 X1.0 Y1.0 Z1.0 ; Scale X, Y and Z axis

; ---------- SECTION ----------
; Configure the direction each stepper turns.  For CoreXY, each stepper moves the carriage diagonally.
M569 P0 S1  ; Drive 0, CoreXY_1 ; set mode to spread cycle
M569 P1 S1  ; Drive 1, CoreXY_2 ; set mode to spread cycle
M569 P2 S1  ; Drive 2, Z Motor  ; set mode to spread cycle


; ---------- SECTION ----------
; These values define how many steps make 1mm of movement.
; Please note, only change the calibration if the measurements are always
; off by the same amount, no matter what the material, layer height or print speed.

; Here is a link on how to properly calibrate your step values.
; http://print.theporto.com/posts/how-to-calibrate-your-3d-printer-for-accurate-printing/

M92 X79.94 Y79.94 Z280.6972 ; Set axis steps/mm.
                            ; Please note that on a CoreXY system, the X and Y value MUST be the same.
                            ; Change the Y scaling above if you're not getting identical X and Y distance
M350 X16 Y16 Z16            ; Default machine steps  This line added here as the Duet firmware will then recalcuate the steps/mm for the new M350 below
M350 X16 Y16 Z16 I1         ; Setting microstepping with interpolation, this will recalculate the step sizes above


; ---------- SECTION ----------
; This section sets the stepper motor currents.
; This is an advanced feature and should only be changed if you REALLY know what you're doing!
; Increasing stepper motor currents beyond their limit can result in damage to them!
; This only sets the currents for the movement steppers, change the current for the extruder steppers in machine_stepper_extruder.g
M906 X800 Y800 Z600 I60; Set motor currents (mA) and idle current percentage


; ---------- SECTION ----------
; This section sets the different speed limits of the X Y and Z steppers.
; A higher acceleration value makes for faster print speeds, but can also introduce ghosting and other artifacts.
; The maximum linear speed should only be changed if hardware has changed
; The maximum instantaneous speed change determines how slow the print head has to move before it can make
; abrupt direction changes.
; These are advanced feature values and should only be changed for good reason and if you know how they impact prints.

M203 X24000 Y24000 Z2000 ; Set maximum linear speeds (mm/min)
M201 X2500 Y2500 Z250    ; Set accelerations (mm/s^2)
M566 X400 Y400 Z200      ; Set maximum instantaneous/jerk speed changes (mm/min)

M84 S1 ; Set idle timeout

; ---------- SECTION ----------
; Since this is called in other places as well, the information is in its own file.
M98 P"0:/sys/Common/machine_axisdimension.g" ; Set Axes Limits
