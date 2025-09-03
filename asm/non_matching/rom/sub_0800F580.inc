	.syntax unified
	push {r4, r5, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r4, r1, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800F5E0
	adds r5, r2, #0
	adds r5, #0xbd
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #0x20
	adds r2, r4, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F5E0
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	mov r4, sp
	adds r4, #6
	str r4, [sp]
	add r3, sp, #4
	bl sub_0801B1BC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F5E0
	add r0, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r4]
	bl sub_08012AD0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F5E0
	movs r0, #0xe8
	bl play_sound
	movs r0, #0
	b _0800F5E2
_0800F5E0:
	movs r0, #1
_0800F5E2:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
