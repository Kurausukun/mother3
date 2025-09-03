	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	beq _0807CB5A
	ldr r0, [r4, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r0, [r4, #0x78]
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	ldr r0, [r4, #0x78]
	ldr r2, [r0, #0x1c]
	adds r5, r2, #0
	adds r5, #0x98
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r0, r4
	adds r2, #0xf0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_0807CB5A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
