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

 	// Initialize the loop counter
	mov	x19, x2        // x19 = number of zombies
	mov	x20, x0        // x20 = pointer to zombie array

	loop_start:
	cbz	x19,

 	ldr	x0, [x20]      // x0 = *zombie_position
	mov	x1, x1         // x1 = human_position
	
 	bl	moveZombie

   	// Store the updated zombie position
	str	x0, [x20]
 	

	// Move to the next zombie
	add	x20, x20, #8   
	sub	x19, x19, #1

	b	loop_start



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
 
 	sub x2,x0,x1   //temp = z - h 
  	cmp x2, 10     // temp >= 10
   	bge move_by_10 // if temp>=10 branch move_by_10

 	cmp x2, 0
  	bgt move_by_1

   	cmp x2, 0
    	beq no_move

      	cmp x2, -10
	blt move_by_minus_10

 	
    	move_by_10:
     	sub x0,x0, 10
      	b end_move

     	move_by_1:
      	sub x0,x0, 1
       	b end_move
	 
  	move_by_minus_1:
   	add x0,x0,1 
	b end_move

 	move_by_minus_10:
  	add x0,x0, 10
  	b end_move
   
      	no_move:

       	end_move:
       	

       
      
     
    
    	
  	
  	





	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1761:
	.size	moveZombie, .-moveZombie
