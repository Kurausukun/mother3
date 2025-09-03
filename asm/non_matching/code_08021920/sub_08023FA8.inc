	.syntax unified
sub_08023FA8:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08024004
	ldr r2, _08024008
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _08023FFC
	ldrh r0, [r1]
	bl get_obj_direct
	adds r2, r0, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08023FDA
	adds r0, r2, #0
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r0, #0x5e
	bne _08023FFC
_08023FDA:
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08023FFC
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	movs r2, #7
	ands r2, r1
	movs r1, #2
	bl sub_080332AC
_08023FFC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024004: .4byte gGame
_08024008: .4byte 0x00008452
	.syntax divided
