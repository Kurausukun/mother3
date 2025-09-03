	.syntax unified
	push {r4, lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _0804DE34
	ldr r1, _0804DE38
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0804DEC4
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	beq _0804DE3C
	cmp r0, #2
	beq _0804DE46
	ldrh r0, [r2]
	cmp r0, #1
	bne _0804DEAC
	movs r0, #0xd2
	bl play_sound
	ldrh r0, [r4, #4]
	cmp r0, #1
	beq _0804DE78
	b _0804DE50
	.align 2, 0
_0804DE34: .4byte gSomeBlend
_0804DE38: .4byte 0x00004ECC
_0804DE3C:
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_0804DECC
	b _0804DEC4
_0804DE46:
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_0804DF30
	b _0804DEC4
_0804DE50:
	cmp r0, #1
	bgt _0804DE5A
	cmp r0, #0
	beq _0804DE60
	b _0804DEC4
_0804DE5A:
	cmp r0, #2
	beq _0804DE90
	b _0804DEC4
_0804DE60:
	ldr r0, _0804DE74
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #0xa]
	b _0804DEC4
	.align 2, 0
_0804DE74: .4byte gSave
_0804DE78:
	ldr r0, _0804DE88
	ldr r1, _0804DE8C
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r4, #4]
	movs r0, #2
	strh r0, [r4, #0xa]
	b _0804DEC4
	.align 2, 0
_0804DE88: .4byte gSave
_0804DE8C: .4byte 0x0000081E
_0804DE90:
	bl sub_0804C68C
	ldr r0, _0804DEA4
	ldr r1, _0804DEA8
	adds r0, r0, r1
	movs r1, #0x14
	strb r1, [r0]
	bl sub_08049DC4
	b _0804DEC4
	.align 2, 0
_0804DEA4: .4byte gSomeBlend
_0804DEA8: .4byte 0x00004261
_0804DEAC:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	movs r3, #2
	bl sub_080534C8
_0804DEC4:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
