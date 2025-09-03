	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #0
	strh r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r7, r2
	strh r1, [r0]
	movs r5, #0
_0803F0BC:
	lsls r0, r5, #2
	adds r0, r7, r0
	str r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0803F0BC
	adds r4, r7, #0
	movs r5, #0
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r6, r4, r0
_0803F0D6:
	ldr r0, _0803F120
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803F10E
	bl sub_08054FCC
	str r0, [r4]
	ldrb r0, [r0]
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803F0FE
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0803F0FE:
	ldr r0, [r4]
	bl sub_0805504C
	lsls r0, r0, #0x10
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	adds r4, #4
_0803F10E:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0803F0D6
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F120: .4byte gSave
	.syntax divided
