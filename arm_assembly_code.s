; 2. Addition of Two Numbers
.global _start
.section .text
_start:
    mov r0, #5          // First number
    mov r1, #3          // Second number
    add r0, r0, r1      // Add r1 to r0, result in r0
    // r0 contains 8 now
    mov r7, #1          // syscall for exit
    swi 0

; 3. Loop (Decrement Counter)
.global _start
.section .text
_start:
    mov r0, #5          // Set counter to 5
loop_start:
    sub r0, r0, #1      // Decrement r0
    cmp r0, #0          // Check if r0 is 0
    bne loop_start      // Loop if not equal to zero
    mov r7, #1          // Exit
    swi 0

; 4. String Length
.global _start
.section .data
msg: .asciz "Hello"

.section .text
_start:
    ldr r0, =msg        // Load address of string
    mov r1, #0          // Length counter
string_len:
    ldrb r2, [r0, r1]   // Load byte from string
    cmp r2, #0          // Check for null terminator
    beq done
    add r1, r1, #1      // Increment length counter
    b string_len
done:
    mov r7, #1          // Exit
    swi 0

; 5. Compare Two Numbers
.global _start
.section .text
_start:
    mov r0, #5          // First number
    mov r1, #3          // Second number
    cmp r0, r1          // Compare numbers
    beq equal
    mov r7, #1          // Exit with failure
    swi 0
equal:
    mov r7, #1          // Exit successfully
    swi 0

; 6. Print a Number
.global _start
.section .text
_start:
    mov r0, #5          // Number to print
    add r0, r0, #'0'    // Convert to ASCII
    mov r1, #1          // File descriptor (stdout)
    mov r2, #1          // Length of the string
    mov r7, #4          // Syscall number for write
    swi 0
    mov r7, #1          // Exit
    swi 0

; 7. Exit Program with Status
.global _start
.section .text
_start:
    mov r0, #0          // Exit status 0
    mov r7, #1          // Syscall for exit
    swi 0

; 8. Multiply Two Numbers
.global _start
.section .text
_start:
    mov r0, #5          // First number
    mov r1, #3          // Second number
    mul r0, r0, r1      // Multiply r0 by r1, result in r0
    // r0 now contains 15
    mov r7, #1          // Exit
    swi 0

; 9. Divide Two Numbers
.global _start
.section .text
_start:
    mov r0, #10         // Dividend
    mov r1, #2          // Divisor
    sdiv r0, r0, r1     // Divide r0 by r1, quotient in r0
    // r0 now contains 5
    mov r7, #1          // Exit
    swi 0

; 10. Fibonacci Sequence
.global _start
.section .text
_start:
    mov r0, #0          // First Fibonacci number
    mov r1, #1          // Second Fibonacci number
    mov r2, #10         // Loop 10 times
fib_loop:
    add r3, r0, r1      // Next Fibonacci number
    mov r0, r1          // Move r1 to r0
    mov r1, r3          // Move r3 to r1
    sub r2, r2, #1      // Decrement loop counter
    cmp r2, #0
    bne fib_loop
    mov r7, #1          // Exit
    swi 0

; 11. Copy String
.global _start
.section .data
src: .asciz "Hello"
dst: .skip 6

.section .text
_start:
    ldr r0, =src        // Load address of source string
    ldr r1, =dst        // Load address of destination
copy_string:
    ldrb r2, [r0], #1   // Load byte from source, increment pointer
    strb r2, [r1], #1   // Store byte to destination, increment pointer
    cmp r2, #0          // Check if it's the null terminator
    bne copy_string
    mov r7, #1          // Exit
    swi 0

; 12. Check If Even or Odd
.global _start
.section .text
_start:
    mov r0, #5          // Number to check
    and r1, r0, #1      // Check least significant bit
    cmp r1, #0
    beq even            // If zero, it's even
    mov r7, #1          // Exit with odd
    swi 0
even:
    mov r7, #1          // Exit with even
    swi 0

; 13. Shift Left
.global _start
.section .text
_start:
    mov r0, #4          // Number to shift
    mov r1, #1          // Shift by 1
    lsl r0, r0, r1      // Logical shift left
    // r0 now contains 8
    mov r7, #1          // Exit
    swi 0

; 14. Shift Right
.global _start
.section .text
_start:
    mov r0, #4          // Number to shift
    mov r1, #1          // Shift by 1
    lsr r0, r0, r1      // Logical shift right
    // r0 now contains 2
    mov r7, #1          // Exit
    swi 0

; 15. Bitwise AND
.global _start
.section .text
_start:
    mov r0, #5          // 0101
    mov r1, #3          // 0011
    and r0, r0, r1      // r0 = 0101 & 0011 = 0001
    // r0 now contains 1
    mov r7, #1          // Exit
    swi 0

; 16. Bitwise OR
.global _start
.section .text
_start:
    mov r0, #5          // 0101
    mov r1, #3          // 0011
    orr r0, r0, r1      // r0 = 0101 | 0011 = 0111
    // r0 now contains 7
    mov r7, #1          // Exit
    swi 0

; 17. Bitwise XOR
.global _start
.section .text
_start:
    mov r0, #5          // 0101
    mov r1, #3          // 0011
    eor r0, r0, r1      // r0 = 0101 ^ 0011 = 0110
    // r0 now contains 6
    mov r7, #1          // Exit
    swi 0

; 18. Factorial (Recursive)
.global _start
.section .text
_start:
    mov r0, #5          // Number for factorial
    bl factorial
    mov r7, #1          // Exit
    swi 0

factorial:
    cmp r0, #1
    ble done
    push {r0}
    sub r0, r0, #1
    bl factorial
    pop {r1}
    mul r0, r0, r1
done:
    bx lr

; 19. Print an Integer (System Call)
.global _start
.section .text
_start:
    mov r0, #5          // Integer to print
    add r0, r0, #'0'    // Convert to ASCII
    mov r1, #1          // File descriptor (stdout)
    mov r2, #1          // Length of the string
    mov r7, #4          // Syscall number for write
    swi 0
    mov r7, #1          // Exit
    swi 0

; 20. Get User Input
.global _start
.section .data
input: .skip 16

.section .text
_start:
    mov r0, #0          // File descriptor (stdin)
    ldr r1, =input      // Buffer to store input
    mov r2, #16         // Max input length
    mov r7, #3          // Syscall for read
    swi 0
    mov r7, #1          // Exit
    swi 0
