	.syntax unified
sub_0804A0A8:
	push {lr}
	ldr r1, _0804A0CC
	ldr r2, _0804A0D0
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _0804A150
	ldr r2, _0804A0D4
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #9
	beq _0804A0EA
	cmp r0, #9
	bgt _0804A0D8
	cmp r0, #8
	beq _0804A0E2
	b _0804A11C
	.align 2, 0
_0804A0CC: .4byte gSomeBlend
_0804A0D0: .4byte 0x00004261
_0804A0D4: .4byte 0x00004A30
_0804A0D8:
	cmp r0, #0xd
	beq _0804A0F8
	cmp r0, #0xe
	beq _0804A10A
	b _0804A11C
_0804A0E2:
	movs r0, #0x51
	bl sub_0804A2E0
	b _0804A146
_0804A0EA:
	movs r0, #0x4f
	bl sub_0804A2E0
	movs r0, #0x50
	bl sub_0804A448
	b _0804A146
_0804A0F8:
	movs r0, #0x47
	bl sub_0804A2E0
	movs r0, #0x4d
	bl sub_0804A448
	bl sub_0804A398
	b _0804A146
_0804A10A:
	movs r0, #0x48
	bl sub_0804A2E0
	movs r0, #0x4e
	bl sub_0804A448
	bl sub_0804A3F0
	b _0804A146
_0804A11C:
	movs r0, #0x47
	bl sub_0804A2E0
	ldr r0, _0804A138
	ldrb r0, [r0]
	cmp r0, #5
	bne _0804A140
	ldr r0, _0804A13C
	ldrb r0, [r0, #1]
	adds r0, #0x4a
	bl sub_0804A448
	b _0804A146
	.align 2, 0
_0804A138: .4byte gUnknown_0200F920
_0804A13C: .4byte gUnknown_02004100
_0804A140:
	movs r0, #0x49
	bl sub_0804A448
_0804A146:
	ldr r0, _0804A154
	ldr r1, _0804A158
	adds r0, r0, r1
	movs r1, #0x12
	strb r1, [r0]
_0804A150:
	pop {r0}
	bx r0
	.align 2, 0
_0804A154: .4byte gSomeBlend
_0804A158: .4byte 0x00004261
	.syntax divided
