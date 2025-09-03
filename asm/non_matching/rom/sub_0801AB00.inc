	.syntax unified
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0801AB18
	ldr r1, _0801AB1C
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801AB24
	ldr r1, _0801AB20
	b _0801AB26
	.align 2, 0
_0801AB18: .4byte gGame
_0801AB1C: .4byte 0x0000829B
_0801AB20: .4byte 0x04000001
_0801AB24:
	ldr r1, _0801AB34
_0801AB26:
	adds r0, r3, #0
	bl sub_0801A9D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0801AB34: .4byte 0x04000011
	.syntax divided
