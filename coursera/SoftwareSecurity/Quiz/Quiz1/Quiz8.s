	.file	"Quiz8.c"
	.section	.rodata
.LC0:
	.string	"argument %d is %s\n"
.LC1:
	.string	"%s"
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
	subl	$1172, %esp
	movl	%ecx, -1160(%ebp)
	movl	$1668048215, -1149(%ebp)
	movl	$543518063, -1145(%ebp)
	movl	$1948282740, -1141(%ebp)
	movl	$1629513064, -1137(%ebp)
	movl	$1836410738, -1133(%ebp)
	movl	$544501349, -1129(%ebp)
	movl	$1869112165, -1125(%ebp)
	movl	$543649385, -1121(%ebp)
	movl	$1735357040, -1117(%ebp)
	movl	$174940530, -1113(%ebp)
	movb	$0, -1109(%ebp)
	movl	$0, -8(%ebp)
	movb	$0, -1108(%ebp)
	leal	-1149(%ebp), %eax
	movl	%eax, (%esp)
	call	printf
	jmp	.L2
.L3:
	movl	-1160(%ebp), %eax
	movl	(%eax), %edx
	movl	$1, %eax
	subl	%edx, %eax
	sall	$2, %eax
	negl	%eax
	movl	-1160(%ebp), %edx
	addl	4(%edx), %eax
	movl	(%eax), %edx
	movl	-1160(%ebp), %ecx
	movl	(%ecx), %eax
	subl	$1, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$.LC0, 4(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	sprintf
	movl	-1160(%ebp), %eax
	subl	$1, (%eax)
	movl	-8(%ebp), %edx
	movl	$999, %eax
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-1108(%ebp), %eax
	movl	%eax, (%esp)
	call	strncat
	leal	-1108(%ebp), %eax
	movl	%eax, (%esp)
	call	strlen
	movl	%eax, -8(%ebp)
.L2:
	movl	-1160(%ebp), %edx
	cmpl	$0, (%edx)
	jne	.L3
	leal	-1108(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC1, (%esp)
	call	printf
	movl	$0, %eax
	addl	$1172, %esp
	popl	%ecx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.3.3-5ubuntu4) 4.3.3"
	.section	.note.GNU-stack,"",@progbits
