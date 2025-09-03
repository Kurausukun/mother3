	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0x91
	ldrb r0, [r0]
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08032D6A
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08032D6A
	adds r0, r5, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	lsrs r4, r0, #3
	cmp r4, #0xc
	bls _08032D00
	adds r0, r6, #0
	adds r0, #0x8b
	strb r4, [r0]
	b _08032D18
_08032D00:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08036CA0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r4, #3
	adds r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x8b
	strb r1, [r2]
_08032D18:
	adds r1, r6, #0
	adds r1, #0x8c
	ldr r0, _08032D78
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x92
	ldrh r0, [r0]
	adds r1, #6
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0xae
	ldrh r0, [r0]
	adds r1, #0x1c
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	lsrs r1, r1, #7
	adds r3, r6, #0
	adds r3, #0xbf
	lsls r1, r1, #7
	ldrb r2, [r3]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r4, sp
	adds r0, r5, #0
	mov r1, sp
	bl sub_08036BEC
	ldr r1, _08032D7C
	ldr r0, _08032D80
	adds r1, r1, r0
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08032D84
_08032D6A:
	adds r0, r6, #0
	adds r0, #0xc7
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08032DA2
	.align 2, 0
_08032D78: .4byte 0x0000FFFF
_08032D7C: .4byte gGame
_08032D80: .4byte 0x000067C0
_08032D84:
	subs r2, r1, r0
	strh r2, [r4, #2]
	adds r3, r6, #0
	adds r3, #0xc7
	ldrb r1, [r3]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #4
	strh r0, [r6]
	lsls r2, r2, #4
	strh r2, [r6, #2]
_08032DA2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
