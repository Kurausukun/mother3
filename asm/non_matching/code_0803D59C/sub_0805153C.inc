	.syntax unified
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r0, #0
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080519C4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08051572
	movs r0, #1
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080519C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080515CE
_08051572:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08052184
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08051B48
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080515C8
	adds r0, r4, #0
	movs r1, #1
	bl sub_08052184
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08051B48
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080515C8
	movs r0, #0
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08051C74
	movs r0, #1
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08051C74
	b _080515CE
_080515C8:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_080515CE:
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
