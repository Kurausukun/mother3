	.syntax unified
sub_0805FE30:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	ble _0805FE4E
	b _0806001C
_0805FE4E:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r2, r8
	adds r2, #0x28
	ldr r1, [r2, #4]
	adds r0, r0, r1
	movs r1, #4
	mov sb, r2
	cmp r1, r0
	ble _0805FE72
	adds r1, r0, #0
_0805FE72:
	adds r7, r1, #0
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r0, #0x34
	add r0, r8
	mov sl, r0
	mov r1, r8
	adds r1, #0x40
	str r1, [sp, #8]
	mov r2, r8
	adds r2, #0x4c
	str r2, [sp, #0xc]
	cmp r4, r7
	bge _0805FEDC
	mov r5, sb
_0805FEA0:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r5, #8]
	ldrh r2, [r0]
	mov r0, r8
	bl sub_08060038
	ldr r2, [r5, #4]
	adds r6, r4, #1
	movs r0, #0
	cmp r0, r2
	bge _0805FED6
	mov r1, sb
	ldr r0, [r1, #8]
	subs r1, r2, #1
	adds r4, r0, #4
	adds r3, r0, #0
	cmp r1, #0
	ble _0805FED0
_0805FEC6:
	ldm r4!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FEC6
_0805FED0:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_0805FED6:
	adds r4, r6, #0
	cmp r4, r7
	blt _0805FEA0
_0805FEDC:
	mov r4, sl
	b _0805FF14
_0805FEE0:
	ldr r0, [r4, #8]
	ldr r1, [r0]
	mov r0, r8
	bl sub_08060340
	mov ip, r4
	movs r7, #0
	ldr r1, [r4, #4]
	cmp r7, r1
	bge _0805FF14
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp r7, r2
	bge _0805FF0E
	adds r1, r2, #0
_0805FF04:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FF04
_0805FF0E:
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #4]
_0805FF14:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _0805FF1E
	movs r1, #1
_0805FF1E:
	cmp r1, #0
	beq _0805FEE0
	ldr r4, [sp, #8]
	b _0805FF5A
_0805FF26:
	ldr r0, [r4, #8]
	ldr r1, [r0]
	mov r0, r8
	bl sub_080604CC
	mov ip, r4
	movs r7, #0
	ldr r1, [r4, #4]
	cmp r7, r1
	bge _0805FF5A
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp r7, r2
	bge _0805FF54
	adds r1, r2, #0
_0805FF4A:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FF4A
_0805FF54:
	subs r0, r6, #1
	mov r1, ip
	str r0, [r1, #4]
_0805FF5A:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _0805FF64
	movs r1, #1
_0805FF64:
	cmp r1, #0
	beq _0805FF26
	ldr r4, [sp, #0xc]
	b _0805FFA0
_0805FF6C:
	ldr r0, [r4, #8]
	ldr r1, [r0]
	mov r0, r8
	bl sub_080608BC
	mov ip, r4
	movs r7, #0
	ldr r1, [r4, #4]
	cmp r7, r1
	bge _0805FFA0
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp r7, r2
	bge _0805FF9A
	adds r1, r2, #0
_0805FF90:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FF90
_0805FF9A:
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #4]
_0805FFA0:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _0805FFAA
	movs r1, #1
_0805FFAA:
	cmp r1, #0
	beq _0805FF6C
	movs r6, #0
	b _08060006
_0805FFB2:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r2, r8
	ldr r1, [r2, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, sp
	adds r2, r6, #0
	bl sub_08060E38
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl sub_08060E8C
	adds r6, #1
_08060006:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0805FFB2
_0806001C:
	mov r1, r8
	adds r1, #0x58
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
