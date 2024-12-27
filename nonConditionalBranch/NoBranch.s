.global _start

.section .text
_start:
    B       target_label    // Unconditional branch to 'target_label'
target_label:

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

