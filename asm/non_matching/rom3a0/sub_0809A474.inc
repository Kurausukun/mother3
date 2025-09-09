	.syntax unified
sub_0809A474:
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r3, [r2, r1]
	adds r3, r0, r3
	movs r1, #0xf9
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r4, [r2, #4]
	adds r0, r3, #0
	movs r2, #1
	bl _call_via_r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809A4A2
	movs r0, #1
	b _0809A4A4
_0809A4A2:
	movs r0, #0
_0809A4A4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
