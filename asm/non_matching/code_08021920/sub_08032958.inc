	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	ldr r0, [sp, #0x2c]
	ldr r4, [sp, #0x30]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x10
	str r2, [sp]
	mov r4, sb
	adds r4, #2
	movs r6, #0
	mov r0, sb
	ldrh r0, [r0]
	cmp r6, r0
	bhs _08032A24
	ldr r0, _08032A34
	ldr r2, _08032A38
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x7f
	bhi _08032A24
	mov sl, r1
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
_080329A6:
	mov r7, sl
	ldrh r3, [r7]
	lsls r3, r3, #3
	ldr r0, _08032A3C
	adds r3, r3, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	ldr r0, [sp, #8]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r1, #2
	ldrsb r1, [r4, r1]
	ldr r7, [sp, #4]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, _08032A40
	ands r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrb r0, [r4, #3]
	lsrs r0, r0, #1
	lsls r0, r0, #0x19
	orrs r2, r0
	str r2, [r3]
	mov r1, r8
	lsls r0, r1, #0xa
	orrs r0, r5
	ldr r2, [sp]
	orrs r0, r2
	strh r0, [r3, #4]
	ldr r0, [sp, #8]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08032DAC
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	bl sub_08002760
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #6
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r7, sb
	ldrh r7, [r7]
	cmp r6, r7
	bhs _08032A24
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0x7f
	bls _080329A6
_08032A24:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032A34: .4byte gSomeBlend
_08032A38: .4byte 0x000121B0
_08032A3C: .4byte gUnknown_030038F0
_08032A40: .4byte 0x000001FF
	.syntax divided
