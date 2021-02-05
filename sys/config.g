
;Logging, if needed
M929 S1

;Perform common configuration
M118 S"Loading Common Config" S2
M505 P"Common"          ; Sets config directory to 0:\sys\Common
M98 P"0:/sys/Common/config.g"

; Set the desired mode and run it's config
M118 S"Loading Bowden Config" S2
M505 P"Bowden"          ; Sets config directory to 0:\sys\Bowden
M98 P"0:/sys/Bowden/config.g"

G21 ; Work in millimetres
G90 ; Set to absolute coordinates...
M84 S1 ; Set idle timeout

; Load From Memory
M118 S"Loading Overrides" S2
M501                    ; Load saved parameters from non-volatile memory

M291 P"Let's get printing" R"Boot Complete" S0 T5

;Disable Logging
M929 S0