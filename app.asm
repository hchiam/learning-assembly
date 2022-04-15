section .bss
  ;variables

section .data
  ;constants
  hello: db "Hello World!", 10 ;string to print
  helloLen: equ $-hello        ;need string length to be able to print it
                               ;equate converts symbol into constant
                               ;subtract current position from the hello label

section .text
  global _start ;entry point for linker

  _start:            ;start here
    mov rax,1        ;rax is one of the registers, 1 = sys_write = system write on Linux
    mov rdi,1        ;rdi is stdout, AKA standard output
    mov rsi,hello    ;message to write
    mov rdx,helloLen ;message length
    syscall          ;call kernel

    ;end program
    mov rax,60       ;sys_exit
    mov rdi,0        ;error code 0 (success)
    syscall          ;call kernel
