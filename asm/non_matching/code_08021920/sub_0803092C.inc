	.syntax unified
sub_0803092C:
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080309F8
	adds r0, r4, #0
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _080309F8
	adds r0, r4, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803096C
	ldr r0, _0803098C
	ldr r1, _08030990
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080309F8
_0803096C:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08030994
	adds r0, r4, #0
	adds r0, #0xbd
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	mov r1, sp
	bl sub_0801A548
	b _080309A0
	.align 2, 0
_0803098C: .4byte gGame
_08030990: .4byte 0x00009D10
_08030994:
	ldr r2, _080309D8
	ldrh r1, [r2]
	mov r0, sp
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
_080309A0:
	mov r0, sp
	ldrh r2, [r0]
	ldr r1, _080309DC
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r0, sp
	ldrh r1, [r0, #2]
	add r0, sp, #4
	strh r1, [r0, #2]
	movs r1, #0xf0
	strh r1, [r0, #4]
	movs r1, #0xa0
	strh r1, [r0, #6]
	adds r1, r4, #0
	bl sub_08035600
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080309E0
	adds r0, r4, #0
	adds r0, #0xc8
	ldrb r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0]
	b _080309F8
	.align 2, 0
_080309D8: .4byte gUnknown_02001004
_080309DC: .4byte 0xFFFF0000
_080309E0:
	adds r2, r4, #0
	adds r2, #0xc8
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_080359DC
	adds r0, r4, #0
	bl sub_08030D34
_080309F8:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
