	.syntax unified
cmd_F7:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl get_obj
	adds r2, r0, #0
	cmp r2, #0
	beq _08020010
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801FFE8
	subs r0, #1
	cmp r5, r0
	bne _0801FFDA
	movs r0, #0
	bl sub_08036B6C
	b _08020010
_0801FFDA:
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08036A68
	b _08020010
_0801FFE8:
	cmp r1, #7
	bgt _08020010
	movs r0, #2
	rsbs r0, r0, #0
	cmp r5, r0
	bne _08020000
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036B6C
	b _08020010
_08020000:
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08036A68
_08020010:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
