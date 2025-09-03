	.syntax unified
sub_0805458C:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r1, _080545B4
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _080545A8
	movs r0, #0x63
_080545A8:
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, r2
	bls _080545B8
	subs r0, r0, r2
	b _080545BA
	.align 2, 0
_080545B4: .4byte gSave
_080545B8:
	movs r0, #0
_080545BA:
	strb r0, [r1]
	pop {r0}
	bx r0
	.syntax divided
