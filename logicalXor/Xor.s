.global _start

.section .text
_start:
    MOV     X0, #0b1100     // Load binary 1100 into X0
    MOV     X1, #0b1010     // Load binary 1010 into X1
    EOR     X2, X0, X1      // X2 = X0 ^ X1 (bitwise XOR)

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

