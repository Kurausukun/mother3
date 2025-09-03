	.syntax unified
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, _08058C3C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08058C0A
	movs r1, #0xb1
	lsls r1, r1, #6
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _08058BF0
	ldr r0, _08058C40
	ldr r1, _08058C44
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_08001A94
_08058BF0:
	ldr r2, _08058C48
	adds r0, r4, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08058C0A
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, r1
	ldr r1, _08058C4C
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001A94
_08058C0A:
	ldr r2, _08058C48
	adds r0, r4, r2
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
	ldrh r1, [r0]
	subs r2, #2
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _08058C50
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r1, [r0]
	movs r2, #0xb1
	lsls r2, r2, #6
	adds r0, r4, r2
	ldrh r2, [r0]
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058C3C: .4byte gUnknown_02015DC0
_08058C40: .4byte gUnknown_020192BC
_08058C44: .4byte 0x0600F000
_08058C48: .4byte 0x00002C46
_08058C4C: .4byte 0x06007800
_08058C50: .4byte 0x00002C42
	.syntax divided
