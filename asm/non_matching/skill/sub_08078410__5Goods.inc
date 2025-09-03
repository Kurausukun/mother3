    .syntax unified
sub_08078410__5Goods:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807843A
	movs r0, #0
	b _08078582
_0807843A:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0
	bl fieldSet__6Actionib
	ldr r1, [r6, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0
	bl fieldSet__6Actionib
	b _08078506
_08078460:
	adds r5, r6, #0
	adds r5, #0x34
	movs r1, #0
	ldr r0, [r5, #4]
	mov sb, r5
	cmp r0, #0
	bgt _08078470
	movs r1, #1
_08078470:
	cmp r1, #0
	bne _0807854E
	ldr r2, [r6, #0x1c]
	adds r2, #0x98
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	ldr r1, [r5, #8]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	adds r4, r6, #0
	adds r4, #0x28
	ldr r5, [r5, #8]
	mov r8, r5
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r6, #0x28]
	cmp r0, r5
	bge _080784D2
	lsls r0, r5, #1
	movs r1, #4
	cmp r1, r0
	bge _080784A4
	adds r1, r0, #0
_080784A4:
	adds r5, r1, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r4, #8]
	adds r2, r7, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080784C4
	adds r1, r0, #0
_080784BA:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080784BA
_080784C4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080784CE
	bl __builtin_vec_delete
_080784CE:
	str r5, [r4]
	str r7, [r4, #8]
_080784D2:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r3, sb
	ldr r2, [r3, #4]
	cmp r2, #0
	ble _08078506
	ldr r0, [r3, #8]
	subs r1, r2, #1
	adds r5, r0, #4
	adds r4, r0, #0
	cmp r1, #0
	ble _08078502
_080784F8:
	ldm r5!, {r0}
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080784F8
_08078502:
	subs r0, r2, #1
	str r0, [r3, #4]
_08078506:
	ldr r1, [r6, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0807854E
	movs r0, #1
	movs r1, #0
	bl sub_08073018__FbT0
	bl sub_08072B70__Fv
	bl sub_08072D0C__Fv
	ldr r1, [r6, #0x1c]
	movs r3, #0xd8
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08078460
_0807854E:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0
	bl fieldSet__6Actionib
	ldr r1, [r6, #0x1c]
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, r6, #0
	movs r1, #4
	movs r2, #0
	bl fieldSet__6Actionib
	movs r1, #0
	ldr r0, [r6, #0x40]
	cmp r0, #4
	bne _08078580
	movs r1, #1
_08078580:
	adds r0, r1, #0
_08078582:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
    .syntax divided
