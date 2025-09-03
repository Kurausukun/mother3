	.syntax unified
sub_080599A8:
	push {r4, lr}
	ldr r3, _080599EC
	ldr r1, _080599F0
	adds r4, r3, r1
	ldrb r1, [r4]
	movs r2, #1
	orrs r1, r2
	strb r1, [r4]
	ldrh r1, [r3, #0x22]
	movs r2, #0
	movs r1, #0x3f
	strh r1, [r3, #0x22]
	ldrh r1, [r3, #0x24]
	movs r1, #0x21
	strh r1, [r3, #0x24]
	ldrh r1, [r3, #0x2a]
	movs r1, #0xa0
	strh r1, [r3, #0x2a]
	strh r2, [r0, #2]
	movs r2, #0x78
	strh r2, [r0]
	movs r1, #0x90
	strh r1, [r0, #8]
	movs r1, #0x60
	strh r1, [r0, #0xa]
	strh r2, [r0, #4]
	movs r1, #0x50
	strh r1, [r0, #6]
	movs r0, #0
	bl sub_08058718
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080599EC: .4byte gSomeBlend
_080599F0: .4byte 0x00004814
	.syntax divided
