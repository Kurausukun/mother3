	.syntax unified
	push {lr}
	movs r0, #1
	rsbs r0, r0, #0
	bl get_obj
	adds r2, r0, #0
	cmp r2, #0
	beq _080215BA
	adds r3, r2, #0
	adds r3, #0xbf
	ldrb r1, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_080215BA:
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1d
	movs r0, #0x5a
	bl sub_080028F4
	movs r0, #1
	bl sub_0803C4DC
	ldr r1, _080215E8
	movs r0, #7
	strb r0, [r1]
	ldr r1, _080215EC
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #2
	bl sub_080052E4
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_080215E8: .4byte gUnknown_02004100
_080215EC: .4byte gGame
	.syntax divided
