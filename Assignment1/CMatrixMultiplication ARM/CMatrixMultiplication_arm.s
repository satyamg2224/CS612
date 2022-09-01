	.arch armv5t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"CMatrixMultiplication.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d\000"
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.align	2
.LC1:
	.ascii	"Matrix Multiplication took %f seconds to execute \012"
	.ascii	"\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #76
	ldr	r3, .L16
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3, #0
	sub	r3, fp, #80
	mov	r1, r3
	ldr	r0, .L16+4
	bl	__isoc99_scanf
	ldr	r3, [fp, #-80]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-80]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-80]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-40]
	sub	r3, fp, #76
	mov	r0, r3
	bl	time
	mov	r3, r0
	mov	r0, r3
	bl	srand
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L2
.L3:
	ldr	r3, [fp, #-80]
	lsl	r1, r3, #2
	ldr	r3, [fp, #-72]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-48]
	add	r4, r2, r3
	mov	r0, r1
	bl	malloc
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [fp, #-80]
	lsl	r1, r3, #2
	ldr	r3, [fp, #-72]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-44]
	add	r4, r2, r3
	mov	r0, r1
	bl	malloc
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [fp, #-80]
	lsl	r1, r3, #2
	ldr	r3, [fp, #-72]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r4, r2, r3
	mov	r0, r1
	bl	malloc
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L2:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-72]
	cmp	r2, r3
	blt	.L3
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L4
.L7:
	mov	r3, #0
	str	r3, [fp, #-64]
	b	.L5
.L6:
	bl	rand
	mov	r1, r0
	ldr	r3, .L16+8
	smull	r2, r3, r1, r3
	asr	r2, r3, #5
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r1, r3
	ldr	r3, [fp, #-68]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	ldr	r1, [r3]
	ldr	r3, [fp, #-64]
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r2, r2, #1
	str	r2, [r3]
	bl	rand
	mov	r1, r0
	ldr	r3, .L16+8
	smull	r2, r3, r1, r3
	asr	r2, r3, #5
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r1, r3
	ldr	r3, [fp, #-64]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-44]
	add	r3, r1, r3
	ldr	r1, [r3]
	ldr	r3, [fp, #-68]
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L5:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-64]
	cmp	r2, r3
	blt	.L6
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L4:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-68]
	cmp	r2, r3
	blt	.L7
	bl	clock
	str	r0, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L8
.L13:
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L9
.L12:
	ldr	r3, [fp, #-60]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L10
.L11:
	ldr	r3, [fp, #-60]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r1, [r3]
	ldr	r3, [fp, #-60]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-52]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3]
	ldr	r2, [fp, #-56]
	lsl	r2, r2, #2
	ldr	r0, [fp, #-44]
	add	r2, r0, r2
	ldr	r0, [r2]
	ldr	r2, [fp, #-52]
	lsl	r2, r2, #2
	add	r2, r0, r2
	ldr	r2, [r2]
	mul	r2, r3, r2
	ldr	r3, [fp, #-60]
	lsl	r3, r3, #2
	ldr	r0, [fp, #-40]
	add	r3, r0, r3
	ldr	r0, [r3]
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	add	r3, r0, r3
	add	r2, r1, r2
	str	r2, [r3]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L10:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-52]
	cmp	r2, r3
	blt	.L11
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L9:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-56]
	cmp	r2, r3
	blt	.L12
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L8:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-60]
	cmp	r2, r3
	blt	.L13
	bl	clock
	str	r0, [fp, #-32]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-36]
	sub	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-32]
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L16+12
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	str	r2, [fp, #-28]
	str	r3, [fp, #-24]
	sub	r3, fp, #28
	ldmia	r3, {r2-r3}
	ldr	r0, .L16+16
	bl	printf
	mov	r3, #0
	ldr	r2, .L16
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L15
	bl	__stack_chk_fail
.L15:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L17:
	.align	2
.L16:
	.word	__stack_chk_guard
	.word	.LC0
	.word	1374389535
	.word	1093567616
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-17ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
