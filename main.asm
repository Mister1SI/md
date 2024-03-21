
section .text
global _start
_start:
	mov rax, 60
	mov rdi, 136
	syscall



section .data
	help_text: db "Help menu"


