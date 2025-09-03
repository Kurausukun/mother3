	.syntax unified
sub_0801A238:
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _0801A26C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _0801A266
	cmp r0, #3
	bne _0801A270
_0801A266:
	movs r3, #0
	b _0801A27C
	.align 2, 0
_0801A26C: .4byte gGame
_0801A270:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r3, #0
	cmp r0, r6
	bgt _0801A27C
	ldrh r3, [r5]
_0801A27C:
	ldr r0, _0801A294
	lsls r1, r4, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0801A290
	cmp r0, #3
	bne _0801A298
_0801A290:
	movs r2, #0
	b _0801A2A4
	.align 2, 0
_0801A294: .4byte gGame
_0801A298:
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #0
	cmp r0, r7
	bgt _0801A2A4
	ldrh r2, [r5, #2]
_0801A2A4:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0801A1B8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
