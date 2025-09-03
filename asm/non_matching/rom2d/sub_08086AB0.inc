	.syntax unified
sub_08086AB0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x98
	bl sub_08086C3C
	ldr r1, [r4]
	cmp r1, r0
	bge _08086B02
	adds r0, r6, #0
	adds r0, #0x94
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	adds r0, r6, #0
	bl sub_08086C40
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08086B02
	adds r0, r6, #0
	bl sub_08086B4C
	adds r1, r6, #0
	adds r1, #0x9c
	movs r0, #0
	str r0, [r1]
	b _08086B1A
_08086B02:
	adds r4, r6, #0
	adds r4, #0x9c
	ldr r0, [r4]
	cmp r0, #0x59
	ble _08086B16
	adds r0, r6, #0
	bl sub_08086B4C
	movs r0, #0
	b _08086B18
_08086B16:
	adds r0, #1
_08086B18:
	str r0, [r4]
_08086B1A:
	ldr r0, [r6, #0x1c]
	adds r4, r0, #0
	adds r4, #0x78
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r6, r0
	adds r0, r6, #0
	bl sub_08086C3C
	movs r3, #0
	adds r1, r6, #0
	adds r1, #0x98
	ldr r1, [r1]
	cmp r1, r0
	bge _08086B3A
	movs r3, #1
_08086B3A:
	ldr r2, [r4, #4]
	adds r0, r5, #0
	adds r1, r3, #0
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
