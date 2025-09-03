	.syntax unified
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0801AA90
	ldrb r0, [r0, #8]
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r1, r0
	cmp r1, #0
	bne _0801AA94
	movs r0, #0
	b _0801AAAC
	.align 2, 0
_0801AA90: .4byte gGame
_0801AA94:
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	ldr r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1d
_0801AAAC:
	pop {r1}
	bx r1
	.syntax divided
