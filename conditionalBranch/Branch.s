.global _start

.section .text
_start:
    MOV     X0, #15         // Load 15 into X0
    MOV     X1, #15         // Load 15 into X1
    CMP     X0, X1          // Compare X0 with X1
    BEQ     equal_label     // Branch to 'equal_label' if X0 == X1
    // Code for non-equal case
    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

equal_label:
    // Code for equal case

    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0

