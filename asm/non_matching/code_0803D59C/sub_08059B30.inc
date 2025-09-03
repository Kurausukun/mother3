	.syntax unified
sub_08059B30:
	push {r4, lr}
	ldr r4, _08059B78
	ldrh r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	ldrh r1, [r4, #8]
	movs r2, #0xc8
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	ldrh r0, [r4, #0x22]
	movs r0, #0x21
	strh r0, [r4, #0x22]
	ldr r1, _08059B7C
	adds r0, r4, r1
	ldr r2, _08059B80
	adds r1, r4, r2
	movs r2, #0x40
	bl sub_08001B18
	ldr r0, _08059B84
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059B78: .4byte gSomeBlend
_08059B7C: .4byte 0x00004294
_08059B80: .4byte 0x00002910
_08059B84: .4byte 0x0000328C
	.syntax divided
