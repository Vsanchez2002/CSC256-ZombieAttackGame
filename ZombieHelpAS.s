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
 	moveZombie:
  // Function prologue (optional)
  // ...

  // Assuming z is in w0, h is in w1
  sub w2, w0, w1  // Calculate difference (temp)

  // Conditional moves for different cases
  cmp w2, #10
  b.ge move_by_10
  cmp w2, #1
  b.gt move_by_1
  cmp w2, #0
  b.eq move_by_0
  cmp w2, #-10
  b.lt move_by_minus_10

  // Default case: move by 1
  add w0, w0, #1
  b end_move

move_by_10:
  sub w0, w0, #10
  b end_move

move_by_1:
  sub w0, w0, #1
  b end_move

move_by_0:
  // No movement
  b end_move

move_by_minus_10:
  add w0, w0, #10

end_move:
  // Function epilogue (optional)
  // ...
  ret

	
	
	
										;Return Result
	
	
	
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
