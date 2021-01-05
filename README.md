# DuetConfig
Configuration files for my Duet-based 3D Printers


# Editor Extensions
I use VSCode generally when modifying gcode files, and the [GCode extension](https://marketplace.visualstudio.com/items?itemName=vscode-gcode.gcode) is very helpful in that manner. 

It supports hover-over gcode definitions. Below you will find a definition set from the [Duet GCode Wiki](https://duet3d.dozuki.com/Wiki/Gcode) you can place in your `settings.json` to populate your definition list with the extension.


```json
"gcode.definitions": {
  
  "G0": "Move, rapid, linear interpolation",
  "G1": "Move, feed, linear interpolation",
  "G2": "Move, feed, circular interpolation, clockwise",
  "G3": "Move, feed, circular interpolation, counterclockwise",
  "G4": "Dwell",
  "G10": "Retract, L/P/R/S: Offset/Tool/Temp Setting",
  "G11": "Unretract",
  "G17": "Select XY plane for arc moves",
  "G20": "Set Units to Inches",
  "G21": "Set Units to Millimeters",
  "G28": "Home",
  "G29": "Mesh bed probe",
  "G30": "Single Z-Probe",
  "G31": "Set or Report Current Probe status",
  "G32": "Run bed.g macro",
  "G38.2": "Probe toward workpiece, stop on contact, signal error if failue",
  "G38.3": "Probe toward workpiece, stop on contact",
  "G38.4": "Probe away from workpiece, stop on loss of contact, signal error if failure",
  "G38.5": "Probe away from workpiece, stop on loss of contact",
  "G53": "Use machine coordinates",
  "G54": "Select coordinate system 1",
  "G55": "Select coordinate system 2",
  "G56": "Select coordinate system 3",
  "G57": "Select coordinate system 4",
  "G58": "Select coordinate system 5",
  "G59": "Select coordinate system 6",
  "G59.1": "Select coordinate system 7",
  "G59.2": "Select coordinate system 8",
  "G59.3": "Select coordinate system 9",
  "G60": "Save current position to slot",
  "G90": "Set to Absolute Positioning",
  "G91": "Set to Relative Positioning",
  "G92": "Set Position",
  "M0": "Stop or Unconditional stop",
  "M1": "Sleep or Conditional stop",
  "M3": "Spindle On, Clockwise (CNC specific)/ Laser on (Laser specific)",
  "M4": "Spindle On, Counterclockwise (CNC specific)",
  "M5": "Spindle Off (CNC specific), laser off (Laser specific)",
  "M18": "Disable all stepper motors",
  "M20": "List SD card",
  "M21": "Initialize SD card",
  "M22": "Release SD card",
  "M23": "Select SD file",
  "M24": "Start/resume SD print",
  "M25": "Pause SD print",
  "M26": "Set SD position",
  "M27": "Report SD print status",
  "M28": "Begin write to SD card",
  "M29": "Stop writing to SD card",
  "M30": "Delete a file on the SD card",
  "M32": "Select file and start SD print",
  "M36": "Return file information",
  "M37": "Simulation mode",
  "M38": "Compute SHA1 hash of target file",
  "M39": "Report SD card information",
  "M42": "Switch I/O pin",
  "M80": "ATX Power On",
  "M81": "ATX Power Off",
  "M82": "Set extruder to absolute mode",
  "M83": "Set extruder to relative mode",
  "M84": "Stop idle hold",
  "M92": "Set axis steps per unit",
  "M98": "Call Macro/Subprogram",
  "M99": "Return from Macro/Subprogram",
  "M104": "Set Extruder Temperature",
  "M105": "Get Extruder Temperature",
  "M106": "Fan On",
  "M107": "Fan Off",
  "M108": "Cancel Heating",
  "M109": "Set Extruder Temperature and Wait",
  "M110": "Set Current Line Number",
  "M111": "Set Debug Level",
  "M112": "Emergency Stop",
  "M114": "Get Current Position",
  "M115": "Get Firmware Version and Capabilities",
  "M116": "Wait",
  "M117": "Display Message",
  "M118": "Send Message to Specific Target",
  "M119": "Get Endstop Status",
  "M120": "Push",
  "M121": "Pop",
  "M122": "Diagnose",
  "M135": "Set PID sample interval",
  "M140": "Set Bed Temperature (Fast) or Configure Bed Heater",
  "M141": "Set Chamber Temperature (Fast) or Configure Chamber Heater",
  "M143": "Maximum heater temperature",
  "M144": "Bed Standby",
  "M150": "Set LED colours",
  "M190": "Wait for bed temperature to reach target temp",
  "M191": "Wait for chamber temperature to reach target temp",
  "M200": "Set filament diameter",
  "M201": "Set max acceleration",
  "M203": "Set maximum feedrate",
  "M204": "Set printing and travel accelerations",
  "M205": "Set max instantaneous speed change in mm/sec",
  "M206": "Offset axes",
  "M207": "Set retract length",
  "M208": "Set axis max travel",
  "M220": "Set speed factor override percentage",
  "M221": "Set extrude factor override percentage",
  "M226": "Synchronous Pause",
  "M260": "i2c Send and/or request Data",
  "M261": "i2c Request Data",
  "M280": "Set servo position",
  "M290": "Baby stepping",
  "M291": "Display message and optionally wait for response",
  "M292": "Acknowledge message",
  "M300": "Play beep sound",
  "M301": "Set PID parameters",
  "M302": "Allow cold extrudes",
  "M303": "Run heater tuning",
  "M304": "Set PID parameters - Bed",
  "M305": "Set temperature sensor parameters",
  "M307": "Set or report heating process parameters",
  "M308": "Set or report sensor parameters",
  "M350": "Set microstepping mode",
  "M374": "Save height map",
  "M375": "Load height map",
  "M376": "Set bed compensation taper",
  "M400": "Wait for current moves to finish",
  "M401": "Deploy z-probe",
  "M402": "Retract z-probe",
  "M404": "Filament width and nozzle diameter",
  "M408": "Report JSON-style response",
  "M409": "Query object model",
  "M450": "Report Printer Mode",
  "M451": "Select FFF Printer Mode",
  "M452": "Select Laser DeviceMode",
  "M453": "Select CNC Device Mode",
  "M470": "Create Directory on SD-Card",
  "M471": "Rename File/Directory on SD-Card",
  "M486": "Object cancellation",
  "M500": "Store parameters",
  "M501": "Read stored parameters",
  "M502": "Revert stored parameters",
  "M503": "Print settings",
  "M505": "Set configuration file folder",
  "M540": "Set MAC address",
  "M550": "Set Name",
  "M551": "Set Password",
  "M552": "Set IP address, enable/disable network interface",
  "M553": "Set Netmask",
  "M554": "Set Gateway",
  "M555": "Set compatibility",
  "M556": "Axis skew compensation",
  "M557": "Set Z probe point or define probing grid",
  "M558": "Set Z probe type",
  "M559": "Upload file",
  "M560": "Upload file",
  "M561": "Set Identity Transform",
  "M562": "Reset temperature fault",
  "M563": "Define or remove a tool",
  "M564": "Limit axes",
  "M566": "Set allowable instantaneous speed change",
  "M567": "Set tool mix ratios",
  "M568": "Turn off/on tool mix ratios",
  "M569": "Set motor driver direction, enable polarity and step pulse timing",
  "M569.1": "Stepper driver closed loop control",
  "M570": "Configure heater fault detection",
  "M571": "Set output on extrude",
  "M572": "Set or report extruder pressure advance",
  "M573": "Report heater PWM",
  "M574": "Set endstop configuration",
  "M575": "Set serial comms parameters",
  "M577": "Wait until endstop is triggered",
  "M578": "Fire inkjet bits",
  "M579": "Scale Cartesian axes",
  "M580": "Select Roland",
  "M581": "Configure external trigger",
  "M582": "Check external trigger",
  "M584": "Set drive mapping",
  "M585": "Probe Tool",
  "M586": "Configure network protocols",
  "M587": "Add WiFi host network to remembered list, or list remembered networks",
  "M588": "Forget WiFi host network",
  "M589": "Configure access point parameters",
  "M591": "Configure filament sensing",
  "M592": "Configure nonlinear extrusion",
  "M593": "Configure Dynamic Acceleration Adjustment",
  "M594": "Enter/Leave Height Following mode",
  "M595": "Set movement queue length",
  "M600": "Filament change pause",
  "M650": "Set peel move parameters",
  "M651": "Execute peel move",
  "M665": "Set delta configuration",
  "M666": "Set delta endstop adjustment",
  "M667": "Select CoreXY or related mode",
  "M669": "Set kinematics type and kinematics parameters",
  "M670": "Set IO port bit mapping",
  "M671": "Define positions of Z leadscrews or bed levelling screws",
  "M672": "Program Z probe",
  "M673": "Align plane on rotary axis",
  "M674": "Set Z to center point",
  "M675": "Find center of cavity",
  "M701": "Load filament",
  "M702": "Unload filament",
  "M703": "Configure filament",
  "M750": "Enable 3D scanner extension",
  "M751": "Register 3D scanner extension over USB",
  "M752": "Start 3D scan",
  "M753": "Cancel current 3D scanner action",
  "M754": "Calibrate 3D scanner",
  "M755": "Set alignment mode for 3D scanner",
  "M756": "Shutdown 3D scanner",
  "M851": "Set Z-Probe Offset (Marlin Compatibility)",
  "M905": "Set local date and time",
  "M906": "Set motor currents",
  "M911": "Configure auto save on loss of power",
  "M912": "Set electronics temperature monitor adjustment",
  "M913": "Set motor percentage of normal current",
  "M914": "Set/Get Expansion Voltage Level Translator",
  "M915": "Configure motor stall detection",
  "M916": "Resume print after power failure",
  "M917": "Set motor standstill current reduction",
  "M918": "Configure direct-connect display",
  "M929": "Start/stop event logging to SD card",
  "M950": "Create heater, fan or GPIO/servo pin",
  "M951": "Set height following mode parameters",
  "M952": "Set CAN-FD expansion board address and/or normal data rate",
  "M953": "Set CAN-FD bus fast data rate",
  "M954": "Configure as CAN expansion board",
  "M998": "Request resend of line",
  "M999": "Restart",
  "T": "Report selected tool",
  "T-1": "Deselect all tools",
  "T0": "Select Tool 0",
  "T1": "Select Tool 1",
  "T2": "Select Tool 2",
  "T3": "Select Tool 3",
  "T4": "Select Tool 4",
  "T5": "Select Tool 5",
  "T6": "Select Tool 6",
  "T7": "Select Tool 7",
  "T8": "Select Tool 8"
}
```
