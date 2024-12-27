.global _start
.global add_numbers

.section .text
_start:
    MOV     X0, #5          // First argument: 5
    MOV     X1, #7          // Second argument: 7
    BL      add_numbers     // Call add_numbers(5, 7)
    // Result is now in X0

    MOV     X0, #0          // Exit code
    MOV     X8, #93         // syscall: exit
    SVC     #0              // Make syscall

add_numbers:
    ADD     X0, X0, X1      // X0 = X0 + X1
    RET                     // Return to caller

