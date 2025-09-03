	.syntax unified
sub_08077A64:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	movs r4, #0
	b _08077A96
_08077A76:
	ldr r1, [r6, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	bl sub_08077CF0__16UnitTargetChoiceP4UnitUi
	adds r4, #1
_08077A96:
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08077A76
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x68
	str r7, [sp, #0x28]
	b _08077AD6
_08077AB4:
	ldr r1, [r6, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0x80
	bl sub_08077CF0__16UnitTargetChoiceP4UnitUi
	adds r4, #1
_08077AD6:
	ldr r1, [r6, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r7, #0
	ldrsh r0, [r1, r7]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08077AB4
	movs r0, #0
	b _08077C00
_08077AF2:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x1c]
	lsls r2, r2, #2
	str r2, [sp, #0x24]
	add r3, sp, #0x10
	mov sb, r3
	mov r7, sp
	adds r7, #0x14
	str r7, [sp, #0x2c]
	add r1, sp, #0x18
	mov sl, r1
	ldr r2, [sp, #0x1c]
	adds r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0x1c]
	cmp r0, r3
	bgt _08077B84
	movs r0, #0x9c
	bl __builtin_new
	bl sub_0808B0D8
	str r0, [sp, #0xc]
	adds r7, r4, #0
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _08077B72
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _08077B42
	adds r1, r0, #0
_08077B42:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	mov r8, r0
	ldr r3, [r4, #8]
	mov r2, r8
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08077B62
	adds r1, r0, #0
_08077B58:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08077B58
_08077B62:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08077B6C
	bl __builtin_vec_delete
_08077B6C:
	str r5, [r7]
	mov r1, r8
	str r1, [r7, #8]
_08077B72:
	ldr r2, [r7, #4]
	ldr r1, [r7, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r3, [sp, #0x20]
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r7, #4]
_08077B84:
	movs r7, #0xaa
	lsls r7, r7, #1
	adds r0, r6, r7
	ldr r0, [r0, #8]
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r4, [r5, #0x1c]
	adds r4, #0x88
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r7, #0
	ldrsh r0, [r1, r7]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x1c]
	bl _call_via_r2
	adds r3, r0, #0
	adds r3, #0x20
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sb
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	movs r0, #0x18
	rsbs r0, r0, #0
	add r1, sp, #0x14
	strh r0, [r1]
	movs r3, #0x10
	rsbs r3, r3, #0
	ldr r2, [sp, #0x2c]
	strh r3, [r2, #2]
	add r0, sp, #0x10
	movs r7, #0
	ldrsh r2, [r0, r7]
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r7, sb
	movs r3, #2
	ldrsh r1, [r7, r3]
	adds r2, r2, r0
	subs r1, #0x10
	add r0, sp, #0x18
	strh r2, [r0]
	mov r7, sl
	strh r1, [r7, #2]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	ldr r0, [sp, #0x30]
_08077C00:
	str r0, [sp, #0x1c]
	ldr r1, [r6, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r7, [sp, #0x1c]
	cmp r7, r0
	bge _08077C1E
	b _08077AF2
_08077C1E:
	ldr r1, [r6, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r6, r3
	ldr r0, [r0, #4]
	cmp r4, r0
	bge _08077C94
	adds r7, r6, r3
_08077C42:
	lsls r5, r4, #2
	ldr r0, [r7, #8]
	adds r0, r0, r5
	ldr r2, [r0]
	cmp r2, #0
	beq _08077C5E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08077C5E:
	mov sb, r7
	ldr r3, [r7, #4]
	subs r0, r4, #1
	mov r8, r0
	cmp r4, r3
	bge _08077C8A
	ldr r2, [r7, #8]
	adds r1, r5, r2
	adds r0, r4, #1
	subs r0, r3, r0
	adds r4, r1, #4
	cmp r0, #0
	ble _08077C84
	adds r2, r0, #0
_08077C7A:
	ldm r4!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08077C7A
_08077C84:
	subs r0, r3, #1
	mov r1, sb
	str r0, [r1, #4]
_08077C8A:
	mov r4, r8
	adds r4, #1
	ldr r0, [r7, #4]
	cmp r4, r0
	blt _08077C42
_08077C94:
	ldr r1, [r6, #0x1c]
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r3, r0, #0
	ldr r4, [sp, #0x28]
	cmp r3, #0
	beq _08077CC8
	ldr r2, [r3, #0x1c]
	movs r7, #0xc4
	lsls r7, r7, #1
	adds r2, r2, r7
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	b _08077CCE
_08077CC8:
	mov r0, sp
	bl __3Msg
_08077CCE:
	adds r0, r4, #0
	mov r1, sp
	bl sub_08083D14
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
