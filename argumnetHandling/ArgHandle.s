.global _start

.section .text
_start:
    LDR     X0, [SP, #0]    // Load argc (argument count) from stack
    ADD     X1, SP, #8      // Calculate address of argv (argument vector)
    LDR     X2, [X1, #0]    // Load argv[0] (program name)
    // X0 contains argc, X2 contains argv[0]

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

