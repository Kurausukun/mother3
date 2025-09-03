	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	cmp r1, #1
	beq _08002F20
	cmp r1, #1
	bgt _08002F0A
	cmp r1, #0
	beq _08002F10
	b _08002F7E
_08002F0A:
	cmp r0, #2
	beq _08002F4A
	b _08002F7E
_08002F10:
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08002E8C
	b _08002F7E
_08002F20:
	movs r0, #0
	movs r1, #0x40
	adds r2, r4, #0
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_08002E8C
	b _08002F7E
_08002F4A:
	movs r0, #0x40
	movs r1, #0
	adds r2, r4, #0
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08002F88
	adds r0, r0, r1
	cmp r0, #0
	bge _08002F6A
	rsbs r0, r0, #0
_08002F6A:
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_08002E8C
_08002F7E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002F88: .4byte 0xFFFFFF00
	.syntax divided
