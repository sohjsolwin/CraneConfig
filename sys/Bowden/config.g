; Configuration file for Duet (firmware version 2.02RC2 or newer)
; executed by the firmware on start-up
;
; startup!

M98 P"motion.g"                    ; Call Kinematics/Motor Module
M98 P"thermal.g"                   ; Call Heater/Fan/Sensing Module
M98 P"tools.g"                     ; Call Toolhead Module


M291 P"Bowden Loaded" R"Printer Mode" S1 T10
