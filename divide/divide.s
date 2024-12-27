.global _start

.section .text
_start:
    MOV     X0, #20         // Load 20 into X0
    MOV     X1, #4          // Load 4 into X1
    UDIV    X2, X0, X1      // X2 = X0 / X1 (20 / 4)
    // X2 now contains 5

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

