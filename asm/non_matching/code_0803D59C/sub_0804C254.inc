	.syntax unified
sub_0804C254:
	push {r4, r5, r6, lr}
	ldr r6, _0804C298
	ldr r0, _0804C29C
	adds r1, r6, r0
	movs r2, #0
	movs r0, #0xa
	strb r0, [r1]
	movs r1, #0xbd
	lsls r1, r1, #6
	adds r5, r6, r1
	strh r2, [r5, #4]
	ldr r1, _0804C2A0
	adds r0, r6, r1
	ldrb r0, [r0]
	strh r0, [r5, #0xa]
	strh r2, [r5, #8]
	ldrh r0, [r5, #0xa]
	bl sub_08054FE0
	adds r4, r0, #0
	bl sub_080524EC
	adds r0, r4, #0
	bl sub_08052F9C
	movs r0, #0x85
	lsls r0, r0, #7
	adds r6, r6, r0
	ldrh r0, [r6]
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C298: .4byte gSomeBlend
_0804C29C: .4byte 0x00004260
_0804C2A0: .4byte 0x00004264
	.syntax divided
