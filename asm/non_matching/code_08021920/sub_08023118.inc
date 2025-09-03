	.syntax unified
sub_08023118:
	push {lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r1, sp, #4
	mov r2, sp
	bl sub_08027E0C
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0802313C
	mov r0, sp
	ldrh r1, [r0]
	adds r0, r2, #0
	bl sub_0801B574
	bl sub_0801B7D8
_0802313C:
	movs r0, #0
	bl sub_080052E4
	add sp, #8
	pop {r0}
	bx r0
	.syntax divided
