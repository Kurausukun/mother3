	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08080134
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #1
	bl sub_08083CF4
	adds r0, r4, #0
	bl sub_080802A4
_08080134:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
