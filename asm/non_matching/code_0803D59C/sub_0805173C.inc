	.syntax unified
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08051768
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r4, r0, r1
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	bl sub_080521A4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805176C
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	b _08051794
	.align 2, 0
_08051768: .4byte gUnknown_020050C0
_0805176C:
	movs r0, #0
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08051C74
	movs r0, #1
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08051C74
_08051794:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
