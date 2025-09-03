	.syntax unified
sub_080705A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r4, #0x20
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08070644
	ldr r3, [r4, #8]
	ldr r0, [r3, #8]
	cmp r0, #1
	beq _08070644
	cmp r0, #1
	bgt _080705C6
	cmp r0, #0
	beq _080705CC
	b _08070644
_080705C6:
	cmp r0, #2
	beq _080705E8
	b _08070644
_080705CC:
	ldr r0, [r3]
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r5, #0
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	ldrh r1, [r3, #4]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r4, #8]
	movs r0, #1
	str r0, [r1, #8]
	b _08070644
_080705E8:
	ldrh r0, [r3, #6]
	ldr r6, _08070650
	adds r1, r0, r6
	strh r1, [r3, #6]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08070644
	ldr r0, [r4, #8]
	ldr r2, [r0]
	cmp r2, #0
	beq _08070610
	ldr r1, [r2, #0x1c]
	movs r7, #8
	ldrsh r0, [r1, r7]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08070610:
	mov ip, r4
	ldr r2, [r4, #4]
	cmp r6, r2
	bge _08070644
	ldr r0, [r4, #8]
	subs r1, r2, #1
	adds r4, r0, #0
	adds r4, #0xc
	adds r3, r0, #0
	mov r8, r2
	cmp r1, #0
	ble _0807063C
	adds r2, r1, #0
_0807062A:
	adds r1, r3, #0
	adds r0, r4, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	adds r4, #0xc
	adds r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _0807062A
_0807063C:
	mov r0, r8
	subs r0, #1
	mov r1, ip
	str r0, [r1, #4]
_08070644:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070650: .4byte 0x0000FFFF
	.syntax divided
