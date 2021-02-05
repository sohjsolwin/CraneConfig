; Configuration file for Duet (firmware version 2.02RC2 or newer)
; executed by the firmware on start-up
;
; startup!
;M98 P"0:/sys/Common/config.g"      ; Call Common Config Modules

M98 P"0:/sys/Bowden/machine_tools_fans.g"        ; Call Tools Fans Module
M98 P"0:/sys/Bowden/machine_heater_extrusion.g"  ; Call Tool Heater Module
M98 P"0:/sys/Bowden/machine_tools.g"             ; Call Toolhead Module
M98 P"0:/sys/Bowden/machine_tools_volumetric.g"  ; Call Toolhead Module


M291 P"Bowden Loaded" R"Printer Mode" S1 T10
