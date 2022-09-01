	.file	"CMatrixMultiplication.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.align 8
.LC2:
	.string	"Matrix Multiplication took %f seconds to execute \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-108(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-108(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -72(%rbp)
	movl	-108(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -64(%rbp)
	movl	-108(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -56(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movl	$0, -104(%rbp)
	jmp	.L2
.L3:
	movl	-108(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-72(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-108(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-108(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	addl	$1, -104(%rbp)
.L2:
	movl	-108(%rbp), %eax
	cmpl	%eax, -104(%rbp)
	jl	.L3
	movl	$0, -100(%rbp)
	jmp	.L4
.L7:
	movl	$0, -96(%rbp)
	jmp	.L5
.L6:
	call	rand@PLT
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$100, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-96(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	addl	$1, %edx
	movl	%edx, (%rax)
	call	rand@PLT
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$100, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-100(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	addl	$1, %edx
	movl	%edx, (%rax)
	addl	$1, -96(%rbp)
.L5:
	movl	-108(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jl	.L6
	addl	$1, -100(%rbp)
.L4:
	movl	-108(%rbp), %eax
	cmpl	%eax, -100(%rbp)
	jl	.L7
	call	clock@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L8
.L13:
	movl	$0, -88(%rbp)
	jmp	.L9
.L12:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-88(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	$0, -84(%rbp)
	jmp	.L10
.L11:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-88(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-64(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movl	-84(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-56(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movl	-88(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -84(%rbp)
.L10:
	movl	-108(%rbp), %eax
	cmpl	%eax, -84(%rbp)
	jl	.L11
	addl	$1, -88(%rbp)
.L9:
	movl	-108(%rbp), %eax
	cmpl	%eax, -88(%rbp)
	jl	.L12
	addl	$1, -92(%rbp)
.L8:
	movl	-108(%rbp), %eax
	cmpl	%eax, -92(%rbp)
	jl	.L13
	call	clock@PLT
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	subq	%rax, -40(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-40(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
