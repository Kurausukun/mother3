	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	b _08085C3A
_08085C00:
	ldrh r4, [r5, #0x26]
	adds r0, r4, #1
	strh r0, [r5, #0x26]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08070770
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0807067C
	cmp r0, #0
	bne _08085C32
	ldr r1, [r5, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl playSound
_08085C32:
	movs r0, #1
	bl setsleep
	adds r6, #1
_08085C3A:
	bl sub_08070754
	cmp r6, r0
	blt _08085C00
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
