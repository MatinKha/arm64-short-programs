.global _start

.section .text
_start:
    MOV     X0, #3          // Load 3 into X0
    MOV     X1, #4          // Load 4 into X1
    MUL     X2, X0, X1      // X2 = X0 * X1 (3 * 4)

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

