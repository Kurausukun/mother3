	.syntax unified
sub_080550D8:
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	adds r3, r0, #0
	adds r3, #0x3c
_080550E4:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, r1
	bne _080550F2
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	b _08055100
_080550F2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xf
	bls _080550E4
	movs r0, #1
	rsbs r0, r0, #0
_08055100:
	pop {r1}
	bx r1
	.syntax divided
