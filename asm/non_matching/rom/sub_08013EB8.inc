	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r6, _08013F80
	ldr r0, _08013F84
	adds r7, r6, r0
	ldrb r0, [r7]
	movs r1, #1
	orrs r0, r1
	strb r0, [r7]
	ldr r1, _08013F88
	adds r0, r6, r1
	movs r2, #0
	mov r8, r2
	mov r1, r8
	strh r1, [r0]
	ldr r2, _08013F8C
	adds r2, r2, r6
	mov sb, r2
	ldrb r0, [r2]
	cmp r0, #1
	bne _08013EEA
	b _0801400A
_08013EEA:
	bl sub_08016F1C
	ldr r0, _08013F90
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r4, _08013F94
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	bl sub_0803B800
	adds r1, r0, #0
	str r1, [r4]
	ldr r0, _08013F98
	adds r2, r5, #0
	bl sub_08001B18
	ldr r1, _08013F9C
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08013F2C
	bl _call_via_r0
_08013F2C:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldrb r1, [r7]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013F42
	mov r0, sp
	mov r1, r8
	strh r1, [r0]
_08013F42:
	ldrh r1, [r6, #2]
	ldr r0, _08013FA0
	ands r0, r1
	cmp r0, #0
	beq _08013F52
	mov r0, sp
	mov r2, r8
	strh r2, [r0]
_08013F52:
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08013F6A
	ldr r1, _08013FA4
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0xd1
	bne _08013F6A
	mov r0, sp
	mov r2, r8
	strh r2, [r0]
_08013F6A:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013F76
	bl sub_08005BFC
_08013F76:
	ldr r6, _08013FA8
	ldr r5, _08013FAC
	adds r4, r5, #6
	b _08013FB6
	.align 2, 0
_08013F80: .4byte gGame
_08013F84: .4byte 0x0000598C
_08013F88: .4byte 0x00005962
_08013F8C: .4byte 0x0000595C
_08013F90: .4byte 0x000067C4
_08013F94: .4byte gUnknown_02000028
_08013F98: .4byte gUnknown_03005314
_08013F9C: .4byte gUnknown_08D2D39C
_08013FA0: .4byte 0x00004008
_08013FA4: .4byte 0x000067AC
_08013FA8: .4byte gUnknown_08D2D494
_08013FAC: .4byte gUnknown_0200B55C
_08013FB0:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_08013FB6:
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _08013FB0
	bl _call_via_r0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08013FB0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013FD8
	bl sub_08005C14
_08013FD8:
	ldr r1, _08014018
	ldr r4, _0801401C
	ldr r2, _08014020
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08013FF0
	bl _call_via_r0
_08013FF0:
	ldr r0, _08014024
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08014028
	ldr r0, [r0]
	bl sub_0803B860
_0801400A:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014018: .4byte gUnknown_08D2D58C
_0801401C: .4byte gGame
_08014020: .4byte 0x0000595C
_08014024: .4byte 0x000067C4
_08014028: .4byte gUnknown_02000028
	.syntax divided
