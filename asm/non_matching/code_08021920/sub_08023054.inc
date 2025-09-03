	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r7, #0
	subs r1, r1, r4
	lsls r1, r1, #0xf
	lsrs r5, r1, #0x10
	movs r6, #0
	cmp r7, r5
	bhs _080230BA
	ldrh r0, [r4]
	ldr r1, _08023094
	cmp r0, r1
	beq _080230BA
	ldr r2, _08023098
	mov sb, r2
	mov r8, r1
_0802307A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sb
	bls _0802309C
	ldrh r0, [r4]
	bl sub_08022ED0
	ldrh r1, [r4]
	adds r1, #1
	adds r0, r0, r1
	strh r0, [r4]
	b _080230AA
	.align 2, 0
_08023094: .4byte 0x0000FFFF
_08023098: .4byte 0x0000FEFF
_0802309C:
	ldrh r0, [r4]
	bl sub_08009DDC
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r4, #2
_080230AA:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r5
	bhs _080230BA
	ldrh r0, [r4]
	cmp r0, r8
	bne _0802307A
_080230BA:
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
