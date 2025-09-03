	.syntax unified
sub_08035C64:
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	adds r3, r0, #0
	adds r3, #0x81
_08035C70:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r1, r0
	bhs _08035C7C
	adds r0, r2, #0
	b _08035C88
_08035C7C:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08035C70
	movs r0, #0
_08035C88:
	pop {r1}
	bx r1
	.syntax divided
