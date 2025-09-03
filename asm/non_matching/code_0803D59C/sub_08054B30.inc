	.syntax unified
sub_08054B30:
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sp
	adds r0, #0x3c
	ldm r0!, {r3, r4, r6}
	stm r2!, {r3, r4, r6}
	ldr r0, [r0]
	str r0, [r2]
	ldr r2, _08054B70
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r4, [r0, #0xa]
	lsls r4, r4, #1
	adds r0, r5, #0
	movs r2, #1
	bl sub_080546D8
	adds r0, r4, #0
	bl sub_08054604
	adds r0, r5, #0
	mov r1, sp
	bl sub_080551B0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054B70: .4byte gGoodsInfo
	.syntax divided
