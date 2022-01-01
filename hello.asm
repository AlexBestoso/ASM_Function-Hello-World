BITS 64
global _start
extern print ; tell the linker that there's something to link here!

section .data ; this variable storage section is the same as the original hello world.
buffer: db 'Hello World', 10 ; This comma 10 appends a \n to the end of our string.

section .text

_start:
	; because the rax and rdi registers are handled in print.asm, we don't need to set them.
	; This is how you configure and execute your external function.
	mov rsi, buffer	; Move the starting address of the string we want to print into the rsi register.
	mov rdx, 12	; Tell the cpu of many bytes to read relative to the base addresss
	call print	; invoke our hand crafted function.

	; exit the program with success error code.
	mov rax, 60
	xor rdi, rdi
	syscall
