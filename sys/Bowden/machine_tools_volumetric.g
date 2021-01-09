; machine_tools_volumetric.g
; Configured settings for volumetric extrusion and retraction
; Only configure these if you know what you're doing. 
; See https://duet3d.dozuki.com/Wiki/Gcode#Section_M200_Set_filament_diameter
; See https://duet3d.dozuki.com/Wiki/Gcode#Section_M207_Set_retract_length



; M404 N1.75 D0.4 ; Set Filament Diameter and Nozzle

; Set Firmware Retract (For G10/G11)

; M207 S6.5 R0 F1500 T1500 Z 0.5 ; Retract 6.5mm, unretract 0 extra, at 1500mm/min speeds, Zhop extra 0.5