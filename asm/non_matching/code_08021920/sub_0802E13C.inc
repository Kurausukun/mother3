	.syntax unified
sub_0802E13C:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802E16A
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #4
	ldrsh r1, [r5, r2]
	bl sub_08002FD4
	ldr r2, [r4, #0x2c]
	ldrh r1, [r5, #2]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r1, [r4, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
_0802E16A:
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _0802E184
	movs r0, #1
	b _0802E1F6
_0802E184:
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0802E1DE
	adds r0, r4, #0
	adds r0, #0xc9
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802E1B0
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	b _0802E1DE
_0802E1B0:
	adds r0, r4, #0
	adds r0, #0xcb
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802E1D4
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #3
	bl sub_080332AC
	b _0802E1DE
_0802E1D4:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802E1DE:
	ldr r0, _0802E1FC
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802E1F4
	adds r0, r4, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_0802E1F4:
	movs r0, #0
_0802E1F6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802E1FC: .4byte gGame
	.syntax divided
