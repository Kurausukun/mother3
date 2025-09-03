	.syntax unified
sub_08084CF4:
	push {lr}
	movs r1, #0
	ldr r2, [r0, #0x30]
	cmp r2, #0
	bgt _08084D00
	movs r1, #1
_08084D00:
	cmp r1, #0
	bne _08084D1C
	adds r1, r0, #0
	adds r1, #0x38
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #1
	cmp r0, r2
	bge _08084D1C
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #1
	b _08084D1E
_08084D1C:
	movs r0, #0
_08084D1E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
