.global _start

.section .text
_start:
    MOV     X0, #20         // Load 20 into X0
    MOV     X1, #5          // Load 5 into X1
    SUB     X2, X0, X1      // X2 = X0 - X1 (20 - 5)
    // X2 now contains 15
    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

