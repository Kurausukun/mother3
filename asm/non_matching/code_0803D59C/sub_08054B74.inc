	.syntax unified
sub_08054B74:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r3, sp
	adds r0, #0x3c
	ldm r0!, {r4, r6, r7}
	stm r3!, {r4, r6, r7}
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08054BB4
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r3
	ldrh r4, [r0, #0xa]
	adds r0, r5, #0
	bl sub_0805476C
	adds r0, r4, #0
	bl sub_080545C0
	adds r0, r5, #0
	mov r1, sp
	bl sub_080551B0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054BB4: .4byte gGoodsInfo
	.syntax divided
