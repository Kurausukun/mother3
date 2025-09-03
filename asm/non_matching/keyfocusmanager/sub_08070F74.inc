	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	b _08070FA2
_08070F7C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r5, r0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_08070FA2:
	adds r4, r0, #0
	cmp r4, #0
	bne _08070F7C
	adds r4, r6, #0
	cmp r4, #0
	beq _08070FDA
_08070FAE:
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	subs r5, r5, r0
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, #0
	bne _08070FAE
_08070FDA:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
