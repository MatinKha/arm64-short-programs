.global _start

.section .text
_start:
    MOV     X0, #10         // Load 10 into X0
    MOV     X1, #20         // Load 20 into X1
    CMP     X0, X1          // Compare X0 with X1
    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

