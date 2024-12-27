.global _start

.section .text
_start:
    // Some code here
    B       target_label    // Unconditional branch to 'target_label'
    // This code is skipped
target_label:
    // Code at target label

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

