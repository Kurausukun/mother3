	.syntax unified
sub_08004F7C:
	push {r4, lr}
	ldr r0, _08004FAC
	ldr r1, _08004FB0
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _08004FA4
	adds r4, r2, #0
_08004F90:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08004F90
_08004FA4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004FAC: .4byte gGame
_08004FB0: .4byte 0x00008494
	.syntax divided
