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

 	// Initialize variables
    mov x19, #0                  // i = 0
    mov w20, #-1                 // winner = -1
    mov x21, x0                  // x21 = zom (pointer to zombies)
    mov x22, x1                  // x22 = hum (pointer to human)
    ldr x23, =ZOMBIECOUNT        // x23 = ZOMBIECOUNT

loop_start:
    cmp x19, x23                 // Compare i with ZOMBIECOUNT
    bge loop_end                 // If i >= ZOMBIECOUNT, exit loop

    // Update X-coordinate of Zombie i
    ldr x0, [x21, x19, LSL #4]   // x0 = zom[i].X
    ldr x1, [x22]                // x1 = hum->X
    bl moveZombie
    str x0, [x21, x19, LSL #4]   // zom[i].X = moveZombie(zom[i].X, hum->X)

    // Update Y-coordinate of Zombie i
    ldr x0, [x21, x19, LSL #4 + 8] // x0 = zom[i].Y
    ldr x1, [x22, #8]            // x1 = hum->Y
    bl moveZombie
    str x0, [x21, x19, LSL #4 + 8] // zom[i].Y = moveZombie(zom[i].Y, hum->Y)

    // Check if Zombie caught human
    ldr x0, [x21, x19, LSL #4]   // x0 = zom[i].X
    ldr x1, [x22]                // x1 = hum->X
    cmp x0, x1                   // Compare zom[i].X with hum->X
    bne check_y                  // If not equal, check Y-coordinate

    ldr x0, [x21, x19, LSL #4 + 8] // x0 = zom[i].Y
    ldr x1, [x22, #8]            // x1 = hum->Y
    cmp x0, x1                   // Compare zom[i].Y with hum->Y
    bne continue_loop            // If not equal, continue loop

    // Zombie caught the human
    mov w20, w19                 // winner = i
    b loop_end                   // Exit loop

check_y:
continue_loop:
    add x19, x19, #1             // i++
    b loop_start

loop_end:
    mov w0, w20                  







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
