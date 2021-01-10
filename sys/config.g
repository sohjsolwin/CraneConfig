
;Perform common configuration
M505 P"Common"          ; Sets config directory to 0:\sys\Common
M98 P"config.g"

; Set the desired mode and run it's config
M505 P"Bowden"          ; Sets config directory to 0:\sys\Bowden
M98 P"config.g"

G21 ; Work in millimetres
G90 ; Set to absolute coordinates...
M84 S1 ; Set idle timeout

; Load From Memory
M501                    ; Load saved parameters from non-volatile memory

M291 P"Let's get printing" R"Boot Complete" S0 T5