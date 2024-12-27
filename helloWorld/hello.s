.global _start

.section .data
msg:    .ascii  "Hello, ARM64!\n"
len = . - msg

.section .text
_start:
    MOV     X0, #1          // File descriptor: stdout
    ADR     X1, msg         // Address of msg
    MOV     X2, len         // Length of msg
    MOV     X8, #64         // syscall: write
    SVC     #0              // Make syscall

    MOV     X0, #0          // Exit code
    MOV     X8, #93         // syscall: exit
    SVC     #0              // Make syscall

