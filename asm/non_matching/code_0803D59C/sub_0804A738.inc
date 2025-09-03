	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	cmp r1, #1
	beq _0804A768
	cmp r1, #1
	bgt _0804A758
	cmp r1, #0
	beq _0804A75E
	b _0804A7A6
_0804A758:
	cmp r0, #2
	beq _0804A770
	b _0804A7A6
_0804A75E:
	ldr r4, _0804A764
	b _0804A772
	.align 2, 0
_0804A764: .4byte gUnknown_080C6930
_0804A768:
	ldr r4, _0804A76C
	b _0804A772
	.align 2, 0
_0804A76C: .4byte gUnknown_080C6944
_0804A770:
	ldr r4, _0804A7AC
_0804A772:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0804A7B8
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0804A8B4
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0804AA38
	ldr r0, _0804A7B0
	lsls r1, r5, #1
	ldr r2, _0804A7B4
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r0, #1
	strh r0, [r1]
_0804A7A6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A7AC: .4byte gUnknown_080C6958
_0804A7B0: .4byte gSomeBlend
_0804A7B4: .4byte 0x00002C90
	.syntax divided
