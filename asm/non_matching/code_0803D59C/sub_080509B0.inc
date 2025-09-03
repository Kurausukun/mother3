	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sb, r4
	ldrh r0, [r6]
	cmp r0, #2
	bls _080509E6
	movs r0, #2
_080509E6:
	mov r8, r0
	bl sub_08050E64
	adds r5, r0, #0
	adds r4, r6, #2
	movs r6, #0
	cmp r6, r8
	bhs _08050A5E
_080509F6:
	movs r2, #0
	ldrsb r2, [r4, r2]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r1, #1
	ldrsb r1, [r4, r1]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, _08050A70
	ands r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrh r1, [r4, #2]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r5]
	ldr r1, [sp, #4]
	lsls r0, r1, #0xa
	orrs r0, r7
	ldr r2, [sp]
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r5, #4]
	adds r5, #8
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r8
	blo _080509F6
_08050A5E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050A70: .4byte 0x000001FF
	.syntax divided
