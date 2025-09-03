	.syntax unified
sub_08062AD0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	adds r2, r7, #0
	adds r2, #0x6c
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08062AFC
	b _08062D96
_08062AFC:
	adds r0, r7, #0
	bl sub_08062DB0
	movs r5, #0
	adds r4, r7, #0
	adds r4, #0x54
	movs r0, #0x3c
	adds r0, r0, r7
	mov sb, r0
	adds r1, r7, #0
	adds r1, #0x30
	str r1, [sp, #0x14]
	movs r2, #0x24
	adds r2, r2, r7
	mov sl, r2
	b _08062B5E
_08062B1C:
	ldr r2, [r7, #0x1c]
	adds r2, #0x90
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r7, r0
	ldr r1, [r4, #8]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r8, r4
	movs r5, #0
	mov ip, r5
	ldr r1, [r4, #4]
	cmp ip, r1
	bge _08062B5C
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp ip, r2
	bge _08062B56
	adds r1, r2, #0
_08062B4C:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08062B4C
_08062B56:
	subs r0, r6, #1
	mov r6, r8
	str r0, [r6, #4]
_08062B5C:
	movs r5, #1
_08062B5E:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _08062B68
	movs r1, #1
_08062B68:
	cmp r1, #0
	beq _08062B1C
	mov r4, sb
	b _08062BB2
_08062B70:
	ldr r2, [r7, #0x1c]
	adds r2, #0x88
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	ldr r1, [r4, #8]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r8, r4
	movs r2, #0
	mov ip, r2
	ldr r1, [r4, #4]
	cmp ip, r1
	bge _08062BB0
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp ip, r2
	bge _08062BAA
	adds r1, r2, #0
_08062BA0:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08062BA0
_08062BAA:
	subs r0, r6, #1
	mov r3, r8
	str r0, [r3, #4]
_08062BB0:
	movs r5, #1
_08062BB2:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _08062BBC
	movs r1, #1
_08062BBC:
	cmp r1, #0
	beq _08062B70
	ldr r4, [sp, #0x14]
	b _08062C06
_08062BC4:
	ldr r2, [r7, #0x1c]
	adds r2, #0x80
	movs r5, #0
	ldrsh r0, [r2, r5]
	adds r0, r7, r0
	ldr r1, [r4, #8]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r8, r4
	movs r6, #0
	mov ip, r6
	ldr r1, [r4, #4]
	cmp ip, r1
	bge _08062C04
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp ip, r2
	bge _08062BFE
	adds r1, r2, #0
_08062BF4:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08062BF4
_08062BFE:
	subs r0, r6, #1
	mov r1, r8
	str r0, [r1, #4]
_08062C04:
	movs r5, #1
_08062C06:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _08062C10
	movs r1, #1
_08062C10:
	cmp r1, #0
	beq _08062BC4
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r3, sl
	ldr r1, [r3, #4]
	adds r0, r0, r1
	movs r1, #3
	cmp r1, r0
	ble _08062C32
	adds r1, r0, #0
_08062C32:
	mov sb, r1
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	cmp r6, sb
	bge _08062CB6
	mov r8, sl
_08062C4C:
	mov r0, r8
	ldr r5, [r0, #8]
	ldrh r2, [r5]
	adds r3, r5, #4
	adds r5, #8
	ldr r4, [r7, #0x1c]
	adds r4, #0x78
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r0, r7, r0
	adds r1, r7, #0
	adds r1, #0x7c
	ldrh r1, [r1]
	str r5, [sp]
	ldr r4, [r4, #4]
	bl _call_via_r4
	mov r3, r8
	ldr r2, [r3, #4]
	adds r6, #1
	str r6, [sp, #0x1c]
	movs r4, #0
	cmp r4, r2
	bge _08062CAE
	mov r5, sl
	ldr r0, [r5, #8]
	subs r1, r2, #1
	movs r6, #0xc
	adds r6, r6, r0
	mov ip, r6
	adds r3, r0, #0
	str r2, [sp, #0x18]
	cmp r1, #0
	ble _08062CA6
	adds r2, r1, #0
_08062C92:
	adds r1, r3, #0
	mov r0, ip
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	movs r0, #0xc
	add ip, r0
	adds r3, #0xc
	subs r2, #1
	cmp r2, #0
	bne _08062C92
_08062CA6:
	ldr r0, [sp, #0x18]
	subs r0, #1
	mov r1, r8
	str r0, [r1, #4]
_08062CAE:
	movs r5, #1
	ldr r6, [sp, #0x1c]
	cmp r6, sb
	blt _08062C4C
_08062CB6:
	cmp r5, #1
	bne _08062CD4
	ldr r2, [sp, #0xc]
	cmp r2, #1
	bne _08062CD4
	ldr r1, [r7, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r3, [r1, #4]
	mov r1, sb
	movs r2, #0x1e
	bl _call_via_r3
_08062CD4:
	movs r6, #0
	b _08062D28
_08062CD8:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r0, sp, #4
	adds r2, r6, #0
	bl sub_08063960
	ldr r2, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	bl _call_via_r2
	add r0, sp, #4
	movs r1, #2
	bl _._15struct_08063998
	adds r6, #1
_08062D28:
	ldr r1, [r7, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _08062CD8
	ldr r4, [sp, #0x10]
	cmp r4, #1
	bne _08062D96
	adds r4, r7, #0
	adds r4, #0x60
	b _08062D88
_08062D48:
	ldr r2, [r7, #0x1c]
	adds r2, #0x98
	movs r5, #0
	ldrsh r0, [r2, r5]
	adds r0, r7, r0
	ldr r1, [r4, #8]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r8, r4
	movs r6, #0
	mov ip, r6
	ldr r1, [r4, #4]
	cmp ip, r1
	bge _08062D88
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp ip, r2
	bge _08062D82
	adds r1, r2, #0
_08062D78:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08062D78
_08062D82:
	subs r0, r6, #1
	mov r1, r8
	str r0, [r1, #4]
_08062D88:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _08062D92
	movs r1, #1
_08062D92:
	cmp r1, #0
	beq _08062D48
_08062D96:
	adds r1, r7, #0
	adds r1, #0x6c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
