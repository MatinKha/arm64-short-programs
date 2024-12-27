.global _start

.section .text
_start:
    BL      my_function     // Branch to 'my_function' and link
    // Continue execution here after return

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

my_function:
    // Function body
    RET                     // Return from function

