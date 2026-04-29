	.syntax unified
sub_08004E64:
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08004F5C
	ldrb r6, [r0]
	movs r3, #0
	ldr r4, _08004F60
	adds r5, r4, #0
	adds r5, #0xa
_08004E74:
	lsls r0, r3, #1
	mov r1, sp
	adds r2, r1, r0
	adds r0, r0, r5
	ldrh r0, [r0]
	ldrh r1, [r2]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08004E74
	adds r0, r4, #0
	movs r1, #3
	bl sub_08007CE8
	ldrh r0, [r4, #0x1c]
	movs r0, #0
	strh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1c]
	ldrh r1, [r4, #0x14]
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x14]
	ldrh r1, [r4, #0x1a]
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	ldrh r1, [r4, #0x12]
	strh r0, [r4, #0x12]
	ldr r0, _08004F64
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08004F68
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _08004F6C
	adds r0, r4, r2
	strh r1, [r0]
	ldr r4, _08004F5C
	ldr r1, _08004F70
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #6
	beq _08004ED6
	movs r0, #5
	bl musicPlayerStop_sfx
_08004ED6:
	bl sub_08027A28
	bl sub_08001960
	bl sub_08005C4C
	movs r0, #0xd
	strb r0, [r4]
	ldr r2, _08004F74
	adds r1, r4, r2
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08004F08
	adds r4, r1, #0
_08004EF4:
	bl sub_08004FB4
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08004EF4
_08004F08:
	movs r3, #0
	ldr r4, _08004F60
	adds r4, #0xa
_08004F0E:
	lsls r0, r3, #1
	adds r2, r0, r4
	add r0, sp
	ldrh r0, [r0]
	ldrh r1, [r2]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _08004F0E
	bl sub_08005BFC
	bl sub_0801084C
	bl sub_08005C14
	ldr r1, _08004F60
	ldr r0, _08004F78
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r3, _08004F5C
	ldr r1, _08004F74
	adds r2, r3, r1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	strb r6, [r3]
	bl sub_08027AE0
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004F5C: .4byte gGame
_08004F60: .4byte gSomeBlend
_08004F64: .4byte 0x000121B9
_08004F68: .4byte 0x00003684
_08004F6C: .4byte 0x000121BE
_08004F70: .4byte 0x0000829B
_08004F74: .4byte 0x00009D14
_08004F78: .4byte 0x000121B8
	.syntax divided
