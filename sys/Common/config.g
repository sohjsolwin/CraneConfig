
;Perform common configuration
M98 P"machine_general.g"                   ; Call General Configuration Module
M98 P"machine_access.g"                    ; Call Network Module
M98 P"machine_zprobe.g"                    ; Call Z Probe Module
M98 P"machine_bedmesh.g"                   ; Call Bed Mesh Configuration Module
M98 P"machine_stepper_movement.g"          ; Call the X/Y/Z Movement Module
M98 P"machine_endstoptypes.g"              ; Call the Endstop Module
M98 P"machine_heater_bed.g"                ; Call the Heater Bed Module
M98 P"machine_system_fans.g"               ; Call the System Fan Module

M98 P"machine_powerloss.g"               ; Call the Power Loss Module