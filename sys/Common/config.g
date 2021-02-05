
;Perform common configuration
M98 P"0:/sys/Common/machine_general.g"                   ; Call General Configuration Module
M98 P"0:/sys/Common/machine_access.g"                    ; Call Network Module
M98 P"0:/sys/Common/machine_zprobe.g"                    ; Call Z Probe Module
M98 P"0:/sys/Common/machine_bedmesh.g"                   ; Call Mesh Configuration Module
M98 P"0:/sys/Common/machine_stepper_movement.g"          ; Call X/Y/Z Movement Module
M98 P"0:/sys/Common/machine_endstoptypes.g"              ; Call Endstop Module
M98 P"0:/sys/Common/machine_heater_bed.g"                ; Call Heater Bed Module
M98 P"0:/sys/Common/machine_system_fans.g"               ; Call System Fan Module

M98 P"0:/sys/Common/machine_powerloss.g"                 ; Call Power Loss Module

M98 P"0:/sys/Common/machine_zendstop.g"                  ; Call Z Endstop Module

; Power On Initial Z Home
M564 H0 S0 ; Disable Boundaries
G91 ; Set Relative
G0 Z-10 F100
G28 Z ; Home Z
G90 ; Set Absolute
M564 H1 S1 ;Enforce Boundaries