.global _start

.section .text
_start:
    MOV     X0, #16         // Load 16 into X0
    LSR     X1, X0, #2      // X1 = X0 >> 2 (right shift by 2 bits)
    // X1 now contains 4 (16 shifted right by 2 is 4)

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

