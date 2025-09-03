	.syntax unified
sub_08028C0C:
	push {r4, r5, r6, lr}
	movs r5, #0
	movs r6, #3
_08028C12:
	adds r0, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08028C60
	bl sub_0801A6AC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, #0xbd
	ands r1, r6
	lsls r1, r1, #3
	ldrb r0, [r4]
	movs r3, #0x19
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r6
	lsls r0, r0, #5
	ldrb r1, [r4]
	movs r3, #0x61
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_08028C60:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08028C12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
