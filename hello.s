;1. Hello World (ARM Linux)
.global _start
.section .data
msg: .asciz "Hello, World!\n"

.section .text
_start:
    mov r0, #1          // File descriptor (stdout)
    ldr r1, =msg        // Load address of message
    mov r2, #14         // Length of the message
    mov r7, #4          // syscall number for sys_write
    swi 0               // Make the system call

    mov r7, #1          // syscall number for sys_exit
    mov r0, #0          // exit status
    swi 0               // Make the system call
