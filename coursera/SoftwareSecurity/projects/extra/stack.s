	.file	"password.c"
	.section	.rodata
.LC0:
	.string	"\n Enter the password : "
.LC1:
	.string	"thegeekstuff"
.LC2:
	.string	"\n Wrong Password "
.LC3:
	.string	"\n Correct Password "
	.align 4
.LC4:
	.string	"\n Root privileges given to the user "
	.text
.globl main
	.type	main, @function
main:
	leal	4(%esp), %ecx
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ecx
	subl	$52, %esp
	movl	$0, -8(%ebp)
	movl	$.LC0, (%esp)
	call	puts
	leal	-23(%ebp), %eax
	movl	%eax, (%esp)
	call	gets
	movl	$.LC1, 4(%esp)
	leal	-23(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp
	testl	%eax, %eax
	je	.L2
	movl	$.LC2, (%esp)
	call	puts
	jmp	.L3
.L2:
	movl	$.LC3, (%esp)
	call	puts
	movl	$1, -8(%ebp)
.L3:
	cmpl	$0, -8(%ebp)
	je	.L4
	movl	$.LC4, (%esp)
	call	puts
.L4:
	movl	$0, %eax
	addl	$52, %esp
	popl	%ecx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.3.3-5ubuntu4) 4.3.3"
	.section	.note.GNU-stack,"",@progbits
