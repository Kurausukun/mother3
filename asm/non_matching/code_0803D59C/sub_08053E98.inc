	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r6, #0
	movs r4, #0
	ldr r0, _08053EC8
	ldr r1, _08053ECC
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r4, r1
	bhs _08053EE2
	adds r7, r0, #0
_08053EB0:
	adds r0, r4, #0
	bl sub_08054FE0
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08053ED6
	cmp r6, r5
	bne _08053ED0
	adds r0, r4, #0
	b _08053EE4
	.align 2, 0
_08053EC8: .4byte gSomeBlend
_08053ECC: .4byte 0x00002DFA
_08053ED0:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08053ED6:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r7]
	cmp r4, r0
	blo _08053EB0
_08053EE2:
	adds r0, r5, #0
_08053EE4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
