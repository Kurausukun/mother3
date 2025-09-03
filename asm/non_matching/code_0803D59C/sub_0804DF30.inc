	.syntax unified
sub_0804DF30:
	push {r4, r5, lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r4, r1, #0
	ldrh r1, [r2]
	adds r5, r1, #0
	cmp r5, #1
	bne _0804DF60
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0804DF58
	ldrh r1, [r4, #4]
	ldr r2, _0804DF5C
	adds r0, r0, r2
	movs r2, #0
	strb r1, [r0]
	strh r5, [r4, #4]
	strh r2, [r4, #0xa]
	b _0804DFCE
	.align 2, 0
_0804DF58: .4byte gSave
_0804DF5C: .4byte 0x0000081E
_0804DF60:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804DFA0
	movs r0, #0xd3
	bl play_sound
	movs r1, #0
	movs r0, #1
	strh r0, [r4, #4]
	strh r1, [r4, #0xa]
	ldr r2, _0804DF90
	ldr r0, _0804DF94
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _0804DF98
	ldr r1, _0804DF9C
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0804DFC8
	.align 2, 0
_0804DF90: .4byte gSomeBlend
_0804DF94: .4byte 0x0000C5B4
_0804DF98: .4byte gSave
_0804DF9C: .4byte 0x0000081E
_0804DFA0:
	adds r0, r4, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r2, #0
	movs r2, #0
	movs r3, #6
	bl sub_080534C8
	ldr r2, _0804DFD8
	ldr r0, _0804DFDC
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r4, #4]
_0804DFC8:
	ldr r1, _0804DFE0
	adds r2, r2, r1
	strb r0, [r2]
_0804DFCE:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804DFD8: .4byte gSomeBlend
_0804DFDC: .4byte 0x0000C5B4
_0804DFE0: .4byte 0x0000C5C0
	.syntax divided
