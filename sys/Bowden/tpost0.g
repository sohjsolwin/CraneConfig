; tpost0.g
; called after tool 0 has been selected
;
; Wait for set temperatures to be reached

M291 P"Waiting for Tool 0 to heat" R"Tool Change" S0  T2
M116 P0

M291 P"Tool change complete" R"Tool Change" S0  T2