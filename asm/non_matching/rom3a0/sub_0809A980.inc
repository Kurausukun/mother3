	.syntax unified
sub_0809A980:
	push {r4, lr}
	adds r4, r0, #0
	b _0809A98C
_0809A986:
	movs r0, #1
	bl setsleep
_0809A98C:
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0xa8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc0
	bne _0809A986
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
