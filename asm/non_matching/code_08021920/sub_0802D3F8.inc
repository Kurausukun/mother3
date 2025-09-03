	.syntax unified
sub_0802D3F8:
	push {r4, r5, r6, lr}
	ldr r0, _0802D448
	ldr r1, _0802D44C
	adds r5, r0, r1
	ldrb r3, [r5]
	ldr r2, _0802D450
	adds r1, r0, r2
	movs r2, #0
	strb r3, [r1]
	strb r2, [r5]
	movs r4, #0
	ldr r1, _0802D454
	adds r0, r0, r1
	ldrb r2, [r0]
	cmp r4, r2
	bhs _0802D440
	adds r6, r0, #0
_0802D41A:
	adds r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802D434
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_0802D434:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r6]
	cmp r4, r0
	blo _0802D41A
_0802D440:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D448: .4byte gGame
_0802D44C: .4byte 0x00008371
_0802D450: .4byte 0x00008372
_0802D454: .4byte 0x00008370
	.syntax divided
