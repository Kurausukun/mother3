	.syntax unified
sub_08084D48:
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x3c]
	cmp r0, r1
	bne _08084D5A
	cmp r2, #1
	bne _08084D60
_08084D5A:
	str r1, [r3, #0x3c]
	movs r0, #1
	b _08084D62
_08084D60:
	movs r0, #0
_08084D62:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
