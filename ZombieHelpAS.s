	.globl	updateZombies    ; -- Begin function _Z13updateZombiesP5pointS0_
	.p2align	2
updateZombies:           ; @_Z13updateZombiesP5pointS0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	
	




										;Load Return Value into Register
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function



	.globl	moveZombie               ; -- Begin function _Z10moveZombieii
	.p2align	2
moveZombie:                      ; @_Z10moveZombieii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	
	
	
										;Return Result
	
	
	
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
