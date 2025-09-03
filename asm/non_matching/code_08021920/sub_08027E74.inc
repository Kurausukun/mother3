	.syntax unified
sub_08027E74:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r6, _08027EDC
	adds r4, #1
	lsls r5, r4, #1
	lsls r4, r4, #0x11
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800289C
	adds r4, r0, #0
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0800289C
	cmp r4, r6
	beq _08027EE4
	cmp r0, r6
	beq _08027EE4
	str r0, [r7]
	mov r0, sb
	lsls r1, r0, #1
	adds r1, r1, r4
	ldrh r2, [r1, #2]
	ldr r0, _08027EE0
	ands r0, r2
	mov r2, r8
	strh r0, [r2]
	movs r0, #2
	ldrsh r1, [r1, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08027EEC
	movs r0, #0
	str r0, [r7]
	strh r0, [r2]
	b _08027EEC
	.align 2, 0
_08027EDC: .4byte gScriptLogic
_08027EE0: .4byte 0x00003FFF
_08027EE4:
	movs r0, #0
	str r0, [r7]
	mov r1, r8
	strh r0, [r1]
_08027EEC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
