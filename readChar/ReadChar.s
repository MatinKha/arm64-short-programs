.global _start

.section .bss
buffer: .skip 1  // Reserve 1 byte for input

.section .text
_start:
    // Read a character from stdin (file descriptor 0)
    MOV X0, #0          // File descriptor: stdin (0)
    ADR X1, buffer      // Address of the buffer
    MOV X2, #1          // Number of bytes to read
    MOV X8, #63         // syscall: read
    SVC #0              // Make the syscall

    // Write the character to stdout (file descriptor 1)
    MOV X0, #1          // File descriptor: stdout (1)
    ADR X1, buffer      // Address of the buffer
    MOV X2, #1          // Number of bytes to write
    MOV X8, #64         // syscall: write
    SVC #0              // Make the syscall

    // Exit the program
    MOV X0, #0          // Exit code
    MOV X8, #93         // syscall: exit
    SVC #0              // Make the syscall

