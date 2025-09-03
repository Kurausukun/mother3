	.syntax unified
sub_080458B8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	ldr r1, _080458F0
	ldr r2, _080458F4
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _080458FC
	ldr r3, _080458F8
	adds r0, r1, r3
	ldr r0, [r0]
	movs r1, #0x10
	b _08045904
	.align 2, 0
_080458F0: .4byte gSomeBlend
_080458F4: .4byte 0x00004A30
_080458F8: .4byte 0x00004DF4
_080458FC:
	ldr r2, _08045980
	adds r0, r1, r2
	ldr r0, [r0]
	movs r1, #9
_08045904:
	bl sub_08048748
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r4
	bhs _08045930
	ldr r0, _08045984
	mov r2, sb
	muls r2, r6, r2
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, sl
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
_08045930:
	subs r5, r4, r6
	cmp r5, #1
	ble _08045970
	movs r4, #0
	subs r0, r5, #1
	cmp r4, r0
	bge _08045970
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	mov r0, sl
	lsls r7, r0, #0x10
_08045948:
	adds r0, r4, r6
	adds r0, #1
	mov r1, sb
	muls r1, r0, r1
	add r1, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	ldr r0, _08045988
	asrs r2, r7, #0x10
	movs r3, #0x20
	bl sub_08046A28
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	subs r0, r5, #1
	cmp r4, r0
	blt _08045948
_08045970:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08045980: .4byte 0x00004DF4
_08045984: .4byte gUnknown_080C6620
_08045988: .4byte gUnknown_080C6634
	.syntax divided
