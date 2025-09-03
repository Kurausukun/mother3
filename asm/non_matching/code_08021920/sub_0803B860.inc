	.syntax unified
sub_0803B860:
	push {lr}
	adds r3, r0, #0
	subs r3, #0x10
	ldr r1, [r3, #0xc]
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _0803B884
	ldr r0, [r3, #8]
	str r1, [r0, #0xc]
	ldr r1, [r3, #0xc]
	ldr r0, [r3, #8]
	str r0, [r1, #8]
	ldr r2, [r3, #0xc]
	ldr r0, [r2]
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r2, #0
_0803B884:
	ldr r1, [r3, #8]
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _0803B89E
	ldr r0, [r1, #8]
	str r3, [r0, #0xc]
	ldr r2, [r3, #8]
	ldr r0, [r3]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2, #8]
	str r0, [r3, #8]
_0803B89E:
	movs r0, #0
	strb r0, [r3, #5]
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
