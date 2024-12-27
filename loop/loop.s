.global _start

.section .text
_start:
    MOV     X0, #5          // Initialize counter to 5
loop_start:
    SUBS    X0, X0, #1      // Decrement counter and set flags
    BGT     loop_start      // Branch to 'loop_start' if X0 > 0

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

