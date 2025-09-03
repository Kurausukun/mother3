	.syntax unified
sub_0800BB54:
	push {r4, r5, lr}
	adds r1, r0, #0
	ldr r0, _0800BB6C
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0800BB70
	adds r0, r1, #0
	bl sub_0800BBF4
	b _0800BBEC
	.align 2, 0
_0800BB6C: .4byte gGame
_0800BB70:
	ldr r0, _0800BBB4
	ldr r1, _0800BBB8
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800BBEC
	movs r0, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #3
	bne _0800BBBC
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0800BBBC
	adds r0, r4, #0
	bl sub_0800BC48
	b _0800BBEC
	.align 2, 0
_0800BBB4: .4byte gSomeBlend
_0800BBB8: .4byte 0x0000566C
_0800BBBC:
	movs r5, #0
_0800BBBE:
	adds r0, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800BBE2
	adds r0, r4, #0
	bl sub_08036BA4
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0800BBE2
	adds r0, r4, #0
	bl sub_0800BE04
_0800BBE2:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _0800BBBE
_0800BBEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
