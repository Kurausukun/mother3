	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_0806BE14
	adds r5, r0, #0
	mov r0, sb
	bl sub_08088660
	mov r8, r0
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_0806BFB0
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806C010
	adds r7, r0, #0
	mov r0, sb
	movs r1, #0
	bl sub_08088668
	adds r5, r0, #0
	lsls r4, r4, #0xf
	lsrs r4, r4, #0x10
	str r4, [sp]
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	ldrsh r2, [r6, r0]
	mov sl, r2
	mov r1, r8
	cmp r1, #0
	ble _080889D4
	mov r6, r8
_0808898C:
	ldr r1, [r5]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r0, _080889E4
	ands r1, r0
	ldr r0, _080889E8
	ands r2, r0
	orrs r1, r2
	mov r0, sl
	adds r2, r1, r0
	ldr r0, _080889EC
	ands r1, r0
	movs r0, #0xff
	ands r2, r0
	orrs r1, r2
	str r1, [r7]
	mov r0, sb
	adds r1, r5, #0
	bl sub_08088BA8
	adds r4, r0, #0
	mov r0, sb
	adds r1, r5, #0
	bl sub_08088C08
	ldr r2, [sp]
	lsls r1, r2, #0xa
	orrs r1, r4
	lsls r0, r0, #0xc
	orrs r0, r1
	strh r0, [r7, #4]
	adds r5, #8
	adds r7, #8
	subs r6, #1
	cmp r6, #0
	bne _0808898C
_080889D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080889E4: .4byte 0xFE00FFFF
_080889E8: .4byte 0x01FF0000
_080889EC: .4byte 0xFFFFFF00
	.syntax divided
