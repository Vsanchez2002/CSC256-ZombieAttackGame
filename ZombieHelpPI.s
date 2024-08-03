	.arch armv8-a

	.text
	.align	2
	.global	updateZombies
	.type	updateZombies, %function
updateZombies:
.LFB1760:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -48







	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1760:
	.size	updateZombies, .-updateZombies


	.align	2
	.global	moveZombie
	.type	moveZombie, %function
moveZombie:
.LFB1761:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32





	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1761:
	.size	moveZombie, .-moveZombie


