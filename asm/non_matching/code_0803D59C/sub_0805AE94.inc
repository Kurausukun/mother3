	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805AED8
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AEC2
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r2, #8]
	strh r0, [r1]
	adds r1, #8
	ldrh r0, [r2, #0xa]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #0xc]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #0xe]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #0x10]
	strh r0, [r1]
_0805AEC2:
	ldr r1, _0805AEDC
	ldrh r0, [r2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #4]
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0805AED8: .4byte gUnknown_02015E00
_0805AEDC: .4byte 0x04000050
	.syntax divided
