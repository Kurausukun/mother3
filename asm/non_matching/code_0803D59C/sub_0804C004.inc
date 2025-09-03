	.syntax unified
	push {r4, lr}
	ldr r2, _0804C044
	ldr r0, _0804C048
	adds r1, r2, r0
	movs r3, #0
	movs r0, #6
	strb r0, [r1]
	movs r1, #0xbb
	lsls r1, r1, #6
	adds r4, r2, r1
	subs r1, #0x1c
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r1, r1, #2
	ldr r0, _0804C04C
	adds r2, r2, r0
	adds r1, r1, r2
	strh r3, [r4, #4]
	ldrb r0, [r1]
	strh r0, [r4, #0xa]
	strh r3, [r4, #8]
	ldrb r0, [r1]
	bl sub_08048534
	strh r0, [r4, #2]
	ldrh r0, [r4, #0xa]
	ldrh r1, [r4, #4]
	bl sub_08048074
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C044: .4byte gSomeBlend
_0804C048: .4byte 0x00004260
_0804C04C: .4byte 0x00003BFC
	.syntax divided
