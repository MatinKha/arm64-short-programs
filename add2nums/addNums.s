.global _start

.section .text
_start:
    MOV X0, #5          // Load 5 into X0
    MOV X1, #7          // Load 7 into X1
    ADD X2, X0, X1      // Add X0 and X1, store result in X2

    // Exit syscall
    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

