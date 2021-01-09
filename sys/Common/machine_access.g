; machine_access.g
; January 5, 2021

; Set the machine name and IP address in here
; Follow http://promega.printm3d.com/books/user-manual/page/network-setup, for more help

M111 S0                   ; Debugging off
M550 P"ShadowMega"  ; Set machine name, type Shadowmega.local/ in your browser!

; M551                    ; No Machine Password
; M540 PBE:EF:DE:AD:FE:ED ; Set MAC address
M552 S0                   ; Disable networking

M586 P0 S1                     ; Enable HTTP
M586 P1 S0                     ; Disable FTP
M586 P2 S0                     ; Disable Telnet

;M552 S1 P192.168.86.107  ; Set IP address and enable networking
;M552 P0.0.0.0 S1         ; Set IP address and enable networking
M552 P0.0.0.0 S1 ; Set IP address and enable wifi networking