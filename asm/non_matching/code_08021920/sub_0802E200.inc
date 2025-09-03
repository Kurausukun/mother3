	.syntax unified
sub_0802E200:
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802E248
	adds r0, r3, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	lsrs r1, r1, #7
	adds r0, #0xf
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	orrs r1, r0
	cmp r1, #0
	bne _0802E248
	ldr r1, [r3, #0x2c]
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0802E236
	subs r0, r2, #1
	strh r0, [r1]
_0802E236:
	movs r1, #0
	ldr r0, [r3, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0802E244
	movs r1, #1
_0802E244:
	adds r0, r1, #0
	b _0802E256
_0802E248:
	ldrh r1, [r2, #2]
	ldrh r2, [r2, #4]
	adds r0, r3, #0
	bl sub_0802F3B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0802E256:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
