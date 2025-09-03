	.syntax unified
sub_0806AC48:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806AD3C
	adds r0, r4, #0
	bl sub_0806ADFC
	movs r1, #0x80
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x54
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x56
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x58
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x5a
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x64
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x22
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #4
	adds r0, r4, #0
	adds r0, #0x6e
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #2
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #4
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #6
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
