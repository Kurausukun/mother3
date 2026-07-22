	.syntax unified
sub_0809CCF4:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _0809CD2C
	adds r6, r1, r0
	adds r0, r6, #0
	bl ch_has_psi
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CD66
	movs r5, #0
	b _0809CD5C
	.align 2, 0
_0809CD2C: .4byte gCharStats
_0809CD30:
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0805C364
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809CD5A
	ldr r1, [r7, #0x1c]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_0809CD5A:
	adds r5, #1
_0809CD5C:
	adds r0, r6, #0
	bl sub_0805C21C
	cmp r5, r0
	blt _0809CD30
_0809CD66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
