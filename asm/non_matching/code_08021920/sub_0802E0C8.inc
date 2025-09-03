	.syntax unified
sub_0802E0C8:
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0802E0F0
	ldr r4, _0802E0F4
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802E0F8
	adds r4, #0x1c
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _0802E0F8
	adds r0, r3, #0
	bl sub_0802DFC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0802E0FA
	.align 2, 0
_0802E0F0: .4byte gGame
_0802E0F4: .4byte 0x0000829B
_0802E0F8:
	movs r0, #0
_0802E0FA:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
