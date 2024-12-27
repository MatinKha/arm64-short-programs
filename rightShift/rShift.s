.global _start

.section .text
_start:
    MOV     X0, #16         // move 16 into X0
    LSR     X1, X0, #2      // X1 = X0 >> 2
    // X1 is 4

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

