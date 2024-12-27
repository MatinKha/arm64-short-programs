.global _start

.section .text
_start:
    MOV     X0, #0b1100     // Load binary 1100 into X0
    MVN     X1, X0          // X1 = ~X0 (bitwise NOT)

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

