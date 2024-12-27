.global _start

.section .data
result: .quad 0             // Reserve 8 bytes for a 64-bit integer

.section .text
_start:
    MOV     X0, #42         // Load 42 into X0
    ADRP    X1, result      // Load the page address of 'result' into X1
    ADD     X1, X1, :lo12:result // Add the offset to get the full address
    STR     X0, [X1]        // Store the value of X0 into the memory location pointed by X1

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

