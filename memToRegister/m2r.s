.global _start

.section .data
value:  .quad 100           // Store the integer 100

.section .text
_start:
    ADRP    X1, value       // Load the page address of 'value' into X1
    ADD     X1, X1, :lo12:value // Add the offset to get the full address
    LDR     X0, [X1]        // Load the value from the memory location into X0
    // X0 now contains 100

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

