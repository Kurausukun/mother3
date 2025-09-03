	.syntax unified
sub_08002474:
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	ldr r5, _080024AC
	asrs r0, r2, #0x10
	cmp r2, r5
	bne _080024BC
	ldrh r1, [r3]
	lsrs r0, r5, #0x10
	cmp r1, r0
	beq _080024E2
	adds r2, r0, #0
_0800248E:
	ldrh r0, [r4]
	adds r4, #2
	adds r3, #2
	cmp r1, r0
	beq _080024B0
_08002498:
	subs r3, #2
	subs r4, #2
	ldrh r0, [r3]
	ldrh r4, [r4]
	cmp r0, r4
	bhi _080024B8
	movs r0, #1
	rsbs r0, r0, #0
	b _080024E4
	.align 2, 0
_080024AC: .4byte 0xFFFF0000
_080024B0:
	ldrh r1, [r3]
	cmp r1, r2
	bne _0800248E
	b _080024E2
_080024B8:
	movs r0, #1
	b _080024E4
_080024BC:
	movs r2, #0
	cmp r2, r0
	bge _080024E2
	ldr r6, _080024EC
	adds r5, r0, #0
_080024C6:
	ldrh r1, [r3]
	ldrh r0, [r4]
	adds r4, #2
	adds r3, #2
	cmp r1, r0
	bne _08002498
	ldrh r0, [r3]
	cmp r0, r6
	beq _080024E2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blt _080024C6
_080024E2:
	movs r0, #0
_080024E4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080024EC: .4byte 0x0000FFFF
	.syntax divided
