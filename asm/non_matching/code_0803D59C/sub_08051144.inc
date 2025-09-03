	.syntax unified
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, #0x2a
	ldrb r4, [r0]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080511AC
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08051178
	adds r0, r5, #4
	adds r1, r5, #0
	adds r1, #0xc
	ldrh r3, [r5, #0x28]
	ldrh r2, [r5, #0x24]
	str r2, [sp]
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x1e
	str r2, [sp, #4]
	adds r2, r5, #0
	bl sub_08002EE0
	b _080511A6
_08051178:
	lsls r0, r4, #0x1a
	lsrs r0, r0, #0x1c
	add r4, sp, #8
	mov r2, sp
	adds r2, #0xa
	adds r1, r4, #0
	bl sub_080270A0
	ldrh r1, [r5, #0x26]
	add r0, sp, #8
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r5, #0x26]
	movs r2, #2
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
_080511A6:
	adds r0, r5, #0
	bl sub_080511B4
_080511AC:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
