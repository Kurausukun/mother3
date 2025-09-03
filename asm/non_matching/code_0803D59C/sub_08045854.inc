	.syntax unified
sub_08045854:
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	add r1, sp, #0x18
	strh r3, [r1]
	ldr r2, _080458B4
	movs r1, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r4, [r0, #0xa]
	add r0, sp, #0x18
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804587C
	lsls r4, r4, #1
_0804587C:
	adds r0, r4, #0
	bl sub_0800268C
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	str r0, [sp]
	movs r0, #0x9c
	lsls r0, r0, #2
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	adds r0, r4, #0
	movs r3, #5
	bl sub_08046BA8
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080458B4: .4byte gGoodsInfo
	.syntax divided
