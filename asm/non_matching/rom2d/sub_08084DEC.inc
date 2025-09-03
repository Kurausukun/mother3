	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #3
	beq _08084E24
	cmp r0, #3
	bgt _08084E00
	cmp r0, #1
	beq _08084E06
	b _08084E82
_08084E00:
	cmp r0, #4
	beq _08084E3E
	b _08084E82
_08084E06:
	ldr r1, [r4, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08084E82
	adds r0, r4, #0
	movs r1, #2
	b _08084E28
_08084E24:
	adds r0, r4, #0
	movs r1, #1
_08084E28:
	movs r2, #0
	bl sub_08084D48
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08084E82
	adds r0, r4, #0
	bl sub_08084E88
	b _08084E82
_08084E3E:
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08084E82
	adds r0, r4, #0
	bl sub_08084E88
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x30]
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	movs r2, #0xd3
	cmp r0, r1
	bge _08084E7C
	movs r2, #0xd2
_08084E7C:
	adds r0, r2, #0
	bl playSound
_08084E82:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
