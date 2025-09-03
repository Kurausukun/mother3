	.syntax unified
	push {lr}
	adds r2, r1, #0
	ldr r0, _0802DF38
	ldr r1, _0802DF3C
	adds r3, r0, r1
	adds r1, #1
	adds r0, r0, r1
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802DF40
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bgt _0802DF40
	movs r0, #1
	b _0802DF42
	.align 2, 0
_0802DF38: .4byte gGame
_0802DF3C: .4byte 0x00008371
_0802DF40:
	movs r0, #0
_0802DF42:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
