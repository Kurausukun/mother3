	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _080136D8
	ldr r1, _080136DC
	adds r6, r0, r1
	ldrb r2, [r6]
	lsrs r4, r2, #4
	mov ip, r0
	cmp r4, r3
	bne _080136E4
	ldr r0, _080136E0
	b _0801373E
	.align 2, 0
_080136D8: .4byte gGame
_080136DC: .4byte 0x000067C5
_080136E0: .4byte gUnknown_020296B8
_080136E4:
	ldr r7, _080136F8
	add r7, ip
	ldrb r5, [r7]
	lsls r0, r5, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r3
	bne _08013700
	ldr r0, _080136FC
	b _0801373E
	.align 2, 0
_080136F8: .4byte 0x000067C6
_080136FC: .4byte gUnknown_02029ED8
_08013700:
	cmp r4, #0xc
	beq _08013720
	cmp r0, #0xc
	bne _08013720
	movs r0, #0xf
	adds r1, r3, #0
	ands r1, r0
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r5
	orrs r0, r1
	strb r0, [r7]
	ldr r4, _0801371C
	b _0801372C
	.align 2, 0
_0801371C: .4byte gUnknown_02029ED8
_08013720:
	lsls r1, r3, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	ldr r4, _08013744
_0801372C:
	lsls r0, r3, #2
	mov r1, ip
	adds r1, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08090F8C
	adds r0, r4, #0
_0801373E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013744: .4byte gUnknown_020296B8
	.syntax divided
