	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r2]
	movs r1, #2
	cmp r0, #2
	bhi _08032AEE
	adds r1, r0, #0
_08032AEE:
	adds r0, r3, #0
	adds r0, #0x32
	strb r1, [r0]
	adds r4, r2, #2
	adds r5, r3, #0
	movs r6, #0
	adds r7, r0, #0
	b _08032B26
_08032AFE:
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x11
	ldr r0, [r3, #0x24]
	adds r0, r0, r1
	str r0, [r5]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	str r3, [sp]
	bl sub_08002760
	strh r0, [r5, #4]
	adds r4, #6
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #8
	ldr r3, [sp]
_08032B26:
	ldrb r0, [r7]
	cmp r6, r0
	blo _08032AFE
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
