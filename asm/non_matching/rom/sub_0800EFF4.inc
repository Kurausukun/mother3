	.syntax unified
sub_0800EFF4:
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0800F018
	ldr r1, _0800F01C
	adds r4, r0, r1
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800F014
	adds r0, r3, #0
	adds r0, #0xbe
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1c
	cmp r1, #0
	bne _0800F020
_0800F014:
	movs r0, #0
	b _0800F038
	.align 2, 0
_0800F018: .4byte gGame
_0800F01C: .4byte 0x00008494
_0800F020:
	adds r0, r3, #0
	adds r0, #0xc0
	ldr r2, [r0]
	lsls r2, r2, #0xe
	lsrs r2, r2, #0x17
	adds r0, r3, #0
	movs r3, #0
	bl object_interact
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
_0800F038:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
