	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
_0807ACA6:
	adds r0, r7, #0
	adds r0, #0xfc
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x3c
	adds r4, r0, r6
	ldrb r0, [r4]
	cmp r0, #0
	beq _0807ACE4
	movs r1, #1
	lsls r1, r6
	ldr r0, [r2, #0x38]
	ands r0, r1
	rsbs r3, r0, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	ldr r5, [r7, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r0, r7, r0
	ldrb r1, [r4]
	lsls r4, r6, #1
	adds r2, #0x4c
	adds r2, r2, r4
	ldrh r2, [r2]
	ldr r4, [r5, #4]
	bl _call_via_r4
_0807ACE4:
	adds r6, #1
	cmp r6, #0x10
	blt _0807ACA6
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
