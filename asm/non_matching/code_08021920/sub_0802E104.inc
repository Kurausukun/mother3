	.syntax unified
sub_0802E104:
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #1
	bne _0802E11A
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
_0802E11A:
	ldr r0, _0802E138
	ldrb r0, [r0, #0xf]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802E130
	adds r0, r4, #0
	adds r0, #0xbf
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_0802E130:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802E138: .4byte gGame
	.syntax divided
