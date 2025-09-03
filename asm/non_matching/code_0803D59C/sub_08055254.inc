	.syntax unified
sub_08055254:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r4, #0
_0805525C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08055180
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08055270
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08055270:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0805525C
	cmp r6, #4
	bls _080552B2
	movs r0, #0
	str r0, [r5, #0x38]
	movs r4, #0
	adds r6, r5, #0
	adds r6, #0x34
	movs r7, #1
	rsbs r7, r7, #0
_0805528C:
	adds r0, r6, r4
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_080550D8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _080552A8
	adds r0, r5, #0
	movs r2, #1
	bl sub_08055190
_080552A8:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0805528C
_080552B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
