.global _start

.section .text
_start:
    MOV     X0, #1          // Load 1 into X0
    LSL     X1, X0, #3      // X1 = X0 << 3 (left shift by 3 bits)
    // X1 now contains 8 (1 shifted left by 3 is 8)

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

