.8086
.model small
.stack 100h

.data
msg     db      'Hello, World!', 0dh, 0ah    ; Message with CR/LF
msglen  equ     $ - msg                      ; Length of message

.code
        public  main
main    proc    near
        mov     ax, @data                    ; Set up data segment
        mov     ds, ax

        mov     ah, 40h                      ; DOS write to handle function
        mov     bx, 1                        ; Standard output handle
        mov     cx, msglen                   ; Length of message
        mov     dx, offset msg               ; Address of message
        int     21h                          ; Call DOS

        mov     ax, 4C00h                    ; DOS terminate function
        int     21h                          ; Return to DOS
main    endp

        end     main
