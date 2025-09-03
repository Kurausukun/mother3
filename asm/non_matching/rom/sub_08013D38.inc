	.syntax unified
sub_08013D38:
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r3, _08013E04
	ldr r0, _08013E08
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08013E0C
	adds r1, r3, r2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08013E10
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #1
	bne _08013D60
	b _08013E9A
_08013D60:
	ldr r0, _08013E14
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013D80
	ldr r1, _08013E18
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08013D80
	movs r0, #0
	strb r0, [r1, #1]
	movs r0, #0xa
	strb r0, [r2]
	ldr r2, _08013E1C
	adds r1, r3, r2
	movs r0, #0x1e
	strh r0, [r1]
_08013D80:
	ldr r6, _08013E04
	ldr r0, _08013E20
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r4, _08013E24
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	bl sub_0803B800
	adds r1, r0, #0
	str r1, [r4]
	ldr r0, _08013E28
	adds r2, r5, #0
	bl sub_08001B18
	ldr r1, _08013E2C
	ldr r2, _08013E10
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08013DC2
	bl _call_via_r0
_08013DC2:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldrh r1, [r6, #2]
	ldr r0, _08013E30
	ands r0, r1
	cmp r0, #0
	beq _08013DD8
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_08013DD8:
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08013DF0
	ldr r1, _08013E34
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #3
	bne _08013DF0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
_08013DF0:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013DFC
	bl sub_08005BFC
_08013DFC:
	ldr r6, _08013E38
	ldr r5, _08013E3C
	adds r4, r5, #7
	b _08013E46
	.align 2, 0
_08013E04: .4byte gGame
_08013E08: .4byte 0x0000598C
_08013E0C: .4byte 0x00005962
_08013E10: .4byte 0x0000595B
_08013E14: .4byte gUnknown_02005080
_08013E18: .4byte gUnknown_020051E8
_08013E1C: .4byte 0x00005960
_08013E20: .4byte 0x000067C4
_08013E24: .4byte gUnknown_02000028
_08013E28: .4byte gUnknown_03005314
_08013E2C: .4byte gUnknown_08D2D320
_08013E30: .4byte 0x00004008
_08013E34: .4byte 0x000067AC
_08013E38: .4byte gUnknown_08D2D418
_08013E3C: .4byte gUnknown_0200B55B
_08013E40:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_08013E46:
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _08013E40
	bl _call_via_r0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08013E40
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013E68
	bl sub_08005C14
_08013E68:
	ldr r1, _08013EA4
	ldr r4, _08013EA8
	ldr r2, _08013EAC
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08013E80
	bl _call_via_r0
_08013E80:
	ldr r0, _08013EB0
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08013EB4
	ldr r0, [r0]
	bl sub_0803B860
_08013E9A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013EA4: .4byte gUnknown_08D2D510
_08013EA8: .4byte gGame
_08013EAC: .4byte 0x0000595B
_08013EB0: .4byte 0x000067C4
_08013EB4: .4byte gUnknown_02000028
	.syntax divided
