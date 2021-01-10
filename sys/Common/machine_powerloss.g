; machine_powerloss.g
; Configure the auto-save functionality on loss of power
; See https://duet3d.dozuki.com/Wiki/Gcode#Section_M911_Configure_auto_save_on_loss_of_power

M911 S21.0 R23.0 P"M913 X0 Y0 G91 M83 G1 Z3 E-5 F1000"
