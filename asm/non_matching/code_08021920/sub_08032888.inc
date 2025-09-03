	.syntax unified
sub_08032888:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	adds r4, r0, #0
	adds r4, #2
	movs r5, #0
	ldrh r0, [r0]
	cmp r5, r0
	bhs _08032932
	ldr r0, _08032944
	ldr r2, _08032948
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x7f
	bhi _08032932
	mov r8, r1
_080328C0:
	mov r7, r8
	ldrh r3, [r7]
	lsls r3, r3, #3
	ldr r0, _0803294C
	adds r3, r3, r0
	movs r2, #0
	ldrsb r2, [r4, r2]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r1, #2
	ldrsb r1, [r4, r1]
	mov r7, sl
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, _08032950
	ands r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrb r0, [r4, #3]
	lsrs r0, r0, #1
	lsls r0, r0, #0x19
	orrs r2, r0
	str r2, [r3]
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r1, r6, #0xa
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r0, _08032954
	adds r1, r6, #0
	bl sub_08032DAC
	adds r4, #6
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [sp]
	ldrh r2, [r2]
	cmp r5, r2
	bhs _08032932
	mov r7, r8
	ldrh r0, [r7]
	cmp r0, #0x7f
	bls _080328C0
_08032932:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032944: .4byte gSomeBlend
_08032948: .4byte 0x000121B0
_0803294C: .4byte gUnknown_030038F0
_08032950: .4byte 0x000001FF
_08032954: .4byte 0xFFFF8000
	.syntax divided
