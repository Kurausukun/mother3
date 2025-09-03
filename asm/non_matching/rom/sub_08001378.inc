	.syntax unified
sub_08001378:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r1, #1
	beq _080013A4
	cmp r1, #1
	bgt _08001396
	cmp r1, #0
	beq _080013A0
	b _080013BC
_08001396:
	cmp r4, #2
	beq _080013AC
	cmp r4, #3
	beq _080013B4
	b _080013BC
_080013A0:
	adds r1, r0, #0
	b _080013C0
_080013A4:
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r0, r4
	b _080013C0
_080013AC:
	movs r4, #0x80
	lsls r4, r4, #5
	adds r1, r0, r4
	b _080013C0
_080013B4:
	movs r4, #0xc0
	lsls r4, r4, #5
	adds r1, r0, r4
	b _080013C0
_080013BC:
	movs r0, #0
	b _080013CA
_080013C0:
	lsls r0, r3, #5
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r1, #0
_080013CA:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
