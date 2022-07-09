    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	mov sb, r2
	ldr r0, [sp, #0x28]
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov sl, r6
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r7, r4, #0
	ldr r0, _080891C8 @ =0x0000FF01
	cmp r4, r0
	beq _080891DE
	adds r0, #0xfe
	cmp r4, r0
	beq _080891DE
	add r0, sp, #4
	bl __7SettingRC7Setting
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _080891DE
	cmp r0, #8
	bgt _080891CC
	str r4, [sp]
	mov r0, r8
	adds r1, r5, #0
	mov r2, sb
	adds r3, r6, #0
	bl sub_080891F0
	b _080891DE
	.align 2, 0
_080891C8: .4byte 0x0000FF01
_080891CC:
	cmp r0, #0x10
	bgt _080891DE
	str r7, [sp]
	mov r0, r8
	adds r1, r5, #0
	mov r2, sb
	mov r3, sl
	bl sub_0808933C
_080891DE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
    .syntax divided
