	.syntax unified
sub_0806DBF8:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DC70
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DC70
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0806DC5A
	movs r0, #0x80
	lsls r0, r0, #1
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r1, r0
	bne _0806DC5A
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r0, r1
	bne _0806DC5A
	adds r0, r4, #0
	adds r0, #0x7c
	adds r1, r4, #0
	adds r1, #0x24
	ldr r2, [r4, #0x28]
	bl sub_08088930
	b _0806DC70
_0806DC5A:
	adds r0, r4, #0
	adds r0, #0x7c
	adds r1, r4, #0
	adds r1, #0x24
	ldr r2, [r4, #0x28]
	adds r3, r4, #0
	adds r3, #0x2c
	adds r4, #0x30
	str r4, [sp]
	bl sub_080889F0
_0806DC70:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
