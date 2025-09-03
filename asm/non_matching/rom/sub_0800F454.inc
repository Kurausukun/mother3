	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #0
	bl get_obj_direct
	adds r7, r0, #0
	cmp r5, #0
	bne _0800F472
	cmp r6, #0
	bne _0800F472
	b _0800F574
_0800F472:
	adds r0, r7, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800F574
	ldr r0, _0800F4C8
	ldr r1, _0800F4CC
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800F574
	add r4, sp, #8
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08036BEC
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	ldrh r2, [r4, #2]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	strh r0, [r4, #2]
	lsls r1, r1, #0x10
	adds r6, r4, #0
	cmp r1, #0
	blt _0800F4D8
	movs r1, #0
	ldrsh r4, [r6, r1]
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800F4D0
	ldrh r0, [r6]
	b _0800F4DA
	.align 2, 0
_0800F4C8: .4byte gGame
_0800F4CC: .4byte 0x000082A6
_0800F4D0:
	bl sub_0801A5EC
	subs r0, #1
	b _0800F4DA
_0800F4D8:
	movs r0, #0
_0800F4DA:
	strh r0, [r6]
	add r5, sp, #8
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0800F504
	movs r0, #2
	ldrsh r4, [r5, r0]
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	cmp r4, r0
	bgt _0800F4FC
	ldrh r0, [r5, #2]
	b _0800F506
_0800F4FC:
	bl sub_0801A604
	subs r0, #1
	b _0800F506
_0800F504:
	movs r0, #0
_0800F506:
	strh r0, [r6, #2]
	adds r4, r7, #0
	adds r4, #0xbd
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	movs r1, #0x20
	adds r2, r6, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F574
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	mov r4, sp
	adds r4, #6
	str r4, [sp]
	add r3, sp, #4
	bl sub_0801B1BC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F574
	add r0, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r4]
	bl sub_08012AD0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800F574
	movs r0, #0xe8
	bl play_sound
	movs r2, #1
	rsbs r2, r2, #0
	movs r0, #0
	movs r1, #0
	bl sub_0802AAEC
	ldr r0, _0800F56C
	ldr r1, _0800F570
	adds r0, r0, r1
	movs r1, #0x1e
	strh r1, [r0]
	movs r0, #0
	b _0800F576
	.align 2, 0
_0800F56C: .4byte gGame
_0800F570: .4byte 0x000082A6
_0800F574:
	movs r0, #1
_0800F576:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
