
;Perform common configuration
M505 P"Common"          ; Sets config directory to 0:\sys\Common
M98 P"config.g"

; Set the desired mode and run it's config
;M505 P"Selectra"       ; Sets config directory to 0:\sys\Selectra
;M505 P"Quad"           ; Sets config directory to 0:\sys\Quad
M505 P"Bowden"          ; Sets config directory to 0:\sys\Bowden
M98 P"config.g"


M291 P"Let's get printing, Josh" R"Boot Complete" S2