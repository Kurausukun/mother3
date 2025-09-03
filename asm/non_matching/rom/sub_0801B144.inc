	.syntax unified
sub_0801B144:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _0801B18C
	ldr r1, _0801B190
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B480
	adds r5, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r5, r5, r0
	ldrb r1, [r5]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0801B1B4
	lsls r0, r1, #0x1e
	cmp r0, #0
	bge _0801B194
	adds r0, r5, #4
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801B194
	ldrh r0, [r5]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x14
	b _0801B1B6
	.align 2, 0
_0801B18C: .4byte gGame
_0801B190: .4byte 0x000067AC
_0801B194:
	ldrb r0, [r5]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0801B1B4
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl sub_080263A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801B1B4
	ldr r0, [r5]
	lsls r0, r0, #5
	lsrs r0, r0, #0x14
	b _0801B1B6
_0801B1B4:
	adds r0, r6, #0
_0801B1B6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
