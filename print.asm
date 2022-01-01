BITS 64 	; states that print.asm is 64 bit.
global print	; defines a global handle for our function. Required for the linker.

section .text 	; standard section.

print:
	; take required registers and store their values on the stack.
	push rax
	push rdi
	
	; Configure the two registers to use the write syscall on stdout
	mov rax, 1	; syscall for write()
	mov rdi, 1	; file descriptor number for stdout
	syscall		; invoke the syscall.

	; restore the integrity of the modified registers.
	pop rdi
	pop rax

	ret 	; return from the function.

