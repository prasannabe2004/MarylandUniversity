	.file	"wisdom-alt.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.globl greeting
	.data
	.align 32
	.type	greeting, @object
	.size	greeting, 56
greeting:
	.string	"Hello there\n1. Receive wisdom\n2. Add wisdom\nSelection >"
.globl prompt
	.type	prompt, @object
	.size	prompt, 19
prompt:
	.string	"Enter some wisdom\n"
.globl pat
	.type	pat, @object
	.size	pat, 23
pat:
	.string	"Achievement unlocked!\n"
.globl secret
	.type	secret, @object
	.size	secret, 11
secret:
	.string	"secret key"
.globl infd
	.bss
	.align 4
	.type	infd, @object
	.size	infd, 4
infd:
	.zero	4
.globl outfd
	.data
	.align 4
	.type	outfd, @object
	.size	outfd, 4
outfd:
	.long	1
.globl head
	.bss
	.align 4
	.type	head, @object
	.size	head, 4
head:
	.zero	4
	.text
.globl write_secret
	.type	write_secret, @function
write_secret:
.LFB2:
	.file 1 "wisdom-alt.c"
	.loc 1 28 0
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$24, %esp
.LCFI2:
	.loc 1 29 0
	movl	outfd, %eax
	movl	$11, 8(%esp)
	movl	$secret, 4(%esp)
	movl	%eax, (%esp)
	call	write
	.loc 1 31 0
	leave
	ret
.LFE2:
	.size	write_secret, .-write_secret
.globl pat_on_back
	.type	pat_on_back, @function
pat_on_back:
.LFB3:
	.loc 1 33 0
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	subl	$24, %esp
.LCFI5:
	.loc 1 34 0
	movl	outfd, %eax
	movl	$23, 8(%esp)
	movl	$pat, 4(%esp)
	movl	%eax, (%esp)
	call	write
	.loc 1 36 0
	leave
	ret
.LFE3:
	.size	pat_on_back, .-pat_on_back
	.section	.rodata
.LC0:
	.string	"\n"
	.text
.globl get_wisdom
	.type	get_wisdom, @function
get_wisdom:
.LFB4:
	.loc 1 38 0
	pushl	%ebp
.LCFI6:
	movl	%esp, %ebp
.LCFI7:
	subl	$40, %esp
.LCFI8:
	.loc 1 39 0
	movl	$1998614382, -15(%ebp)
	movl	$1868854121, -11(%ebp)
	movw	$2669, -7(%ebp)
	movb	$0, -5(%ebp)
	.loc 1 40 0
	movl	head, %eax
	testl	%eax, %eax
	jne	.L6
	.loc 1 41 0
	movl	outfd, %edx
	movl	$10, 8(%esp)
	leal	-15(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	write
	jmp	.L10
.L6:
.LBB2:
	.loc 1 43 0
	movl	head, %eax
	movl	%eax, -4(%ebp)
	jmp	.L8
.L9:
	.loc 1 45 0
	movl	-4(%ebp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	call	strlen
	movl	%eax, %ecx
	movl	-4(%ebp), %eax
	addl	$4, %eax
	movl	outfd, %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	write
	.loc 1 46 0
	movl	outfd, %eax
	movl	$1, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	%eax, (%esp)
	call	write
	.loc 1 47 0
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
.L8:
	.loc 1 44 0
	cmpl	$0, -4(%ebp)
	jne	.L9
.L10:
.LBE2:
	.loc 1 51 0
	leave
	ret
.LFE4:
	.size	get_wisdom, .-get_wisdom
.globl put_wisdom
	.type	put_wisdom, @function
put_wisdom:
.LFB5:
	.loc 1 53 0
	pushl	%ebp
.LCFI9:
	movl	%esp, %ebp
.LCFI10:
	pushl	%edi
.LCFI11:
	subl	$180, %esp
.LCFI12:
	.loc 1 54 0
	leal	-144(%ebp), %eax
	movl	%eax, -152(%ebp)
	movl	$0, -156(%ebp)
	movl	$128, %eax
	cmpl	$4, %eax
	jb	.L12
	movl	$32, -160(%ebp)
	movl	-152(%ebp), %edi
	movl	-160(%ebp), %ecx
	movl	-156(%ebp), %eax
	rep stosl
.L12:
	.loc 1 57 0
	movl	outfd, %eax
	movl	$18, 8(%esp)
	movl	$prompt, 4(%esp)
	movl	%eax, (%esp)
	call	write
	movl	%eax, -16(%ebp)
	.loc 1 58 0
	cmpl	$0, -16(%ebp)
	js	.L18
	.loc 1 62 0
	leal	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	gets
	movl	%eax, -16(%ebp)
	.loc 1 63 0
	cmpl	$0, -16(%ebp)
	je	.L18
	.loc 1 66 0
	movl	$132, (%esp)
	call	malloc
	movl	%eax, -12(%ebp)
	.loc 1 68 0
	cmpl	$0, -12(%ebp)
	je	.L18
	.loc 1 69 0
	movl	$132, 8(%esp)
	movl	$0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	memset
	.loc 1 70 0
	movl	-12(%ebp), %eax
	leal	4(%eax), %edx
	leal	-144(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	strcpy
	.loc 1 71 0
	movl	head, %eax
	testl	%eax, %eax
	jne	.L15
	.loc 1 72 0
	movl	-12(%ebp), %eax
	movl	%eax, head
	jmp	.L18
.L15:
.LBB3:
	.loc 1 74 0
	movl	head, %eax
	movl	%eax, -8(%ebp)
	jmp	.L16
.L17:
	.loc 1 76 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
.L16:
	.loc 1 75 0
	movl	-8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L17
	.loc 1 78 0
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%edx)
.L18:
.LBE3:
	.loc 1 83 0
	addl	$180, %esp
	popl	%edi
	popl	%ebp
	ret
.LFE5:
	.size	put_wisdom, .-put_wisdom
.globl ptrs
	.data
	.align 4
	.type	ptrs, @object
	.size	ptrs, 12
ptrs:
	.long	0
	.long	get_wisdom
	.long	put_wisdom
	.text
.globl main
	.type	main, @function
main:
.LFB6:
	.loc 1 87 0
	leal	4(%esp), %ecx
.LCFI13:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI14:
	pushl	%ebp
.LCFI15:
	movl	%esp, %ebp
.LCFI16:
	pushl	%edi
.LCFI17:
	pushl	%ecx
.LCFI18:
	subl	$1072, %esp
.LCFI19:
.L22:
.LBB4:
	.loc 1 90 0
	leal	-1048(%ebp), %eax
	movl	%eax, -1052(%ebp)
	movl	$0, -1056(%ebp)
	movl	$1024, %eax
	cmpl	$4, %eax
	jb	.L20
	movl	$256, -1060(%ebp)
	movl	-1052(%ebp), %edi
	movl	-1060(%ebp), %ecx
	movl	-1056(%ebp), %eax
	rep stosl
.L20:
	.loc 1 92 0
	movl	$pat_on_back, -20(%ebp)
	.loc 1 93 0
	movl	outfd, %eax
	movl	$55, 8(%esp)
	movl	$greeting, 4(%esp)
	movl	%eax, (%esp)
	call	write
	movl	%eax, -24(%ebp)
	.loc 1 94 0
	cmpl	$0, -24(%ebp)
	js	.L21
	.loc 1 97 0
	movl	infd, %eax
	movl	$1023, 8(%esp)
	leal	-1048(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	read
	movl	%eax, -24(%ebp)
	.loc 1 98 0
	cmpl	$0, -24(%ebp)
	jle	.L21
.LBB5:
	.loc 1 99 0
	movl	-24(%ebp), %eax
	movb	$0, -1048(%ebp,%eax)
	.loc 1 100 0
	leal	-1048(%ebp), %eax
	movl	%eax, (%esp)
	call	atoi
	movl	%eax, -16(%ebp)
	.loc 1 102 0
	movl	-16(%ebp), %eax
	movl	ptrs(,%eax,4), %eax
	movl	%eax, -12(%ebp)
	.loc 1 103 0
	movl	-12(%ebp), %eax
	call	*%eax
	jmp	.L22
.L21:
.LBE5:
.LBE4:
	.loc 1 109 0
	movl	$0, %eax
	.loc 1 110 0
	addl	$1072, %esp
	popl	%ecx
	popl	%edi
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE6:
	.size	main, .-main
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x1
	.align 4
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.byte	0x4
	.long	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.byte	0x4
	.long	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.byte	0x4
	.long	.LCFI6-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x5
	.align 4
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.byte	0x4
	.long	.LCFI9-.LFB5
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI12-.LCFI10
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.byte	0x4
	.long	.LCFI13-.LFB6
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x9
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI18-.LCFI16
	.byte	0x84
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.align 4
.LEFDE8:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB2-.Ltext0
	.long	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI1-.Ltext0
	.long	.LFE2-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LFB3-.Ltext0
	.long	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI3-.Ltext0
	.long	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI4-.Ltext0
	.long	.LFE3-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LFB4-.Ltext0
	.long	.LCFI6-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI6-.Ltext0
	.long	.LCFI7-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI7-.Ltext0
	.long	.LFE4-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LFB5-.Ltext0
	.long	.LCFI9-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI9-.Ltext0
	.long	.LCFI10-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI10-.Ltext0
	.long	.LFE5-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LFB6-.Ltext0
	.long	.LCFI13-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI13-.Ltext0
	.long	.LCFI14-.Ltext0
	.value	0x1
	.byte	0x51
	.long	.LCFI14-.Ltext0
	.long	.LCFI15-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI15-.Ltext0
	.long	.LCFI16-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI16-.Ltext0
	.long	.LFE6-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x31a
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF27
	.byte	0x1
	.long	.LASF28
	.long	.LASF29
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.long	0x74
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x6
	.long	.LASF30
	.byte	0x84
	.byte	0x1
	.byte	0x13
	.long	0xa4
	.uleb128 0x7
	.long	.LASF10
	.byte	0x1
	.byte	0x14
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x15
	.long	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x7b
	.uleb128 0x8
	.long	0x74
	.long	0xba
	.uleb128 0x9
	.long	0x6b
	.byte	0x7f
	.byte	0x0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0x16
	.long	0x7b
	.uleb128 0xa
	.long	.LASF13
	.byte	0x1
	.byte	0x1a
	.long	0xd0
	.uleb128 0x5
	.byte	0x4
	.long	0xd6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.long	.LLST0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.long	.LLST1
	.uleb128 0xd
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.long	.LLST2
	.long	0x140
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x27
	.long	0x140
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0xf
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xe
	.string	"l"
	.byte	0x1
	.byte	0x2b
	.long	0x150
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.long	0x74
	.long	0x150
	.uleb128 0x9
	.long	0x6b
	.byte	0xa
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0xba
	.uleb128 0xd
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST3
	.long	0x1ad
	.uleb128 0xe
	.string	"wis"
	.byte	0x1
	.byte	0x36
	.long	0xaa
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0xe
	.string	"r"
	.byte	0x1
	.byte	0x37
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"l"
	.byte	0x1
	.byte	0x42
	.long	0x150
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.long	.LBB3
	.long	.LBE3
	.uleb128 0xe
	.string	"v"
	.byte	0x1
	.byte	0x4a
	.long	0x150
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	0x4f
	.long	.LFB6
	.long	.LFE6
	.long	.LLST4
	.long	0x236
	.uleb128 0x11
	.long	.LASF18
	.byte	0x1
	.byte	0x57
	.long	0x4f
	.uleb128 0x11
	.long	.LASF19
	.byte	0x1
	.byte	0x57
	.long	0x236
	.uleb128 0xf
	.long	.LBB4
	.long	.LBE4
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.byte	0x5a
	.long	0x23c
	.byte	0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0xe
	.string	"r"
	.byte	0x1
	.byte	0x5b
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0x5c
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.long	.LBB5
	.long	.LBE5
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0x64
	.long	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"tmp"
	.byte	0x1
	.byte	0x66
	.long	0xc5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x6e
	.uleb128 0x8
	.long	0x74
	.long	0x24d
	.uleb128 0x12
	.long	0x6b
	.value	0x3ff
	.byte	0x0
	.uleb128 0x8
	.long	0x74
	.long	0x25d
	.uleb128 0x9
	.long	0x6b
	.byte	0x37
	.byte	0x0
	.uleb128 0x13
	.long	.LASF20
	.byte	0x1
	.byte	0x9
	.long	0x24d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	greeting
	.uleb128 0x8
	.long	0x74
	.long	0x27f
	.uleb128 0x9
	.long	0x6b
	.byte	0x12
	.byte	0x0
	.uleb128 0x13
	.long	.LASF21
	.byte	0x1
	.byte	0xa
	.long	0x26f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prompt
	.uleb128 0x8
	.long	0x74
	.long	0x2a1
	.uleb128 0x9
	.long	0x6b
	.byte	0x16
	.byte	0x0
	.uleb128 0x14
	.string	"pat"
	.byte	0x1
	.byte	0xb
	.long	0x291
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pat
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0xc
	.long	0x140
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	secret
	.uleb128 0x13
	.long	.LASF23
	.byte	0x1
	.byte	0xe
	.long	0x4f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	infd
	.uleb128 0x13
	.long	.LASF24
	.byte	0x1
	.byte	0xf
	.long	0x4f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	outfd
	.uleb128 0x13
	.long	.LASF25
	.byte	0x1
	.byte	0x18
	.long	0xa4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	head
	.uleb128 0x8
	.long	0xc5
	.long	0x30b
	.uleb128 0x9
	.long	0x6b
	.byte	0x2
	.byte	0x0
	.uleb128 0x13
	.long	.LASF26
	.byte	0x1
	.byte	0x55
	.long	0x2fb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ptrs
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xa6
	.value	0x2
	.long	.Ldebug_info0
	.long	0x31e
	.long	0xd8
	.string	"write_secret"
	.long	0xed
	.string	"pat_on_back"
	.long	0x102
	.string	"get_wisdom"
	.long	0x156
	.string	"put_wisdom"
	.long	0x1ad
	.string	"main"
	.long	0x25d
	.string	"greeting"
	.long	0x27f
	.string	"prompt"
	.long	0x2a1
	.string	"pat"
	.long	0x2b3
	.string	"secret"
	.long	0x2c5
	.string	"infd"
	.long	0x2d7
	.string	"outfd"
	.long	0x2e9
	.string	"head"
	.long	0x30b
	.string	"ptrs"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.value	0x0
	.value	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"fptr"
.LASF10:
	.string	"next"
.LASF23:
	.string	"infd"
.LASF28:
	.string	"wisdom-alt.c"
.LASF14:
	.string	"write_secret"
.LASF11:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"put_wisdom"
.LASF2:
	.string	"short unsigned int"
.LASF27:
	.string	"GNU C 4.3.3"
.LASF30:
	.string	"_WisdomList"
.LASF3:
	.string	"long unsigned int"
.LASF20:
	.string	"greeting"
.LASF31:
	.string	"main"
.LASF26:
	.string	"ptrs"
.LASF15:
	.string	"pat_on_back"
.LASF25:
	.string	"head"
.LASF16:
	.string	"get_wisdom"
.LASF0:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF24:
	.string	"outfd"
.LASF29:
	.string	"/home/seed/projects/1"
.LASF18:
	.string	"argc"
.LASF21:
	.string	"prompt"
.LASF6:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF5:
	.string	"short int"
.LASF19:
	.string	"argv"
.LASF22:
	.string	"secret"
.LASF12:
	.string	"WisdomList"
.LASF8:
	.string	"long int"
.LASF4:
	.string	"signed char"
	.ident	"GCC: (Ubuntu 4.3.3-5ubuntu4) 4.3.3"
	.section	.note.GNU-stack,"",@progbits
