	.syntax unified
sub_0802DF94:
	push {lr}
	adds r2, r0, #0
	ldr r0, _0802DFA8
	ldr r3, _0802DFAC
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #3
	beq _0802DFB0
	movs r0, #0
	b _0802DFBA
	.align 2, 0
_0802DFA8: .4byte gGame
_0802DFAC: .4byte 0x0000829B
_0802DFB0:
	adds r0, r2, #0
	bl sub_0802DFC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0802DFBA:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
