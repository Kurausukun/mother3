	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldrh r0, [r6, #0x30]
	cmp r0, #0
	beq _08038F82
	ldr r0, _08038EE0
	lsls r4, r1, #2
	ldr r1, _08038EE4
	adds r0, r0, r1
	adds r5, r4, r0
	ldr r0, [r5]
	movs r1, #0x3c
	bl Divide
	movs r1, #8
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	lsrs r3, r1, #0x10
	adds r0, #0xb
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r6, #0x30]
	ands r0, r3
	adds r7, r4, #0
	cmp r0, #0
	beq _08038EDC
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
_08038EDC:
	movs r4, #0
	b _08038F14
	.align 2, 0
_08038EE0: .4byte gGame
_08038EE4: .4byte 0x00008280
_08038EE8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x12
	bls _08038EF8
	movs r2, #0xb
	movs r3, #1
	b _08038EFC
_08038EF8:
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x10
_08038EFC:
	ldr r0, _08038F58
	ldr r1, _08038F5C
	adds r0, r0, r1
	adds r0, r7, r0
	ldr r1, [r0]
	adds r1, #0x3c
	str r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bhi _08038F24
_08038F14:
	cmp r2, #0xd
	beq _08038EE8
	cmp r2, #0xf
	beq _08038EE8
	ldrh r0, [r6, #0x30]
	ands r0, r3
	cmp r0, #0
	beq _08038EE8
_08038F24:
	movs r4, #0
	ldrh r1, [r6, #0x30]
	mov r0, sb
	lsls r5, r0, #0x10
	mov r0, r8
	lsls r6, r0, #0x10
_08038F30:
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08038F64
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08038F60
	adds r0, r0, r1
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	asrs r1, r5, #0x10
	asrs r2, r6, #0x10
	movs r3, #0x20
	bl sub_0803D678
	b _08038F82
	.align 2, 0
_08038F58: .4byte gGame
_08038F5C: .4byte 0x00008280
_08038F60: .4byte gUnknown_080C1B80
_08038F64:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x12
	bls _08038F74
	movs r2, #0xb
	movs r3, #1
	b _08038F78
_08038F74:
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x10
_08038F78:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #7
	bls _08038F30
_08038F82:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
