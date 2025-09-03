	.syntax unified
sub_0801AAB0:
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0801AAF4
	ldrb r0, [r0, #8]
	lsls r1, r0, #0x1f
	lsrs r1, r1, #0x1f
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _0801AAF8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	adds r0, r3, #0
	bl sub_0801A978
	ldr r1, [r0]
	lsls r0, r1, #0x13
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0801AAF8
	lsls r0, r1, #6
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0801AAF8
	lsls r0, r0, #1
	b _0801AAFA
	.align 2, 0
_0801AAF4: .4byte gGame
_0801AAF8:
	movs r0, #1
_0801AAFA:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
