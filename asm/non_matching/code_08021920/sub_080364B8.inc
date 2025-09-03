	.syntax unified
sub_080364B8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xd4]
	mov r0, sp
	strh r3, [r0]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x88
	str r1, [sp, #0xd8]
	ldrh r1, [r1]
	bl sub_080365EC
	mov sl, r0
	cmp r0, #0
	beq _08036544
	mov r2, sp
	adds r2, #4
	str r2, [sp, #0xdc]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r2, #0xd0
	bl sub_08001B18
	movs r0, #0xa6
	adds r0, r0, r5
	mov r8, r0
	ldrh r0, [r0]
	adds r1, r6, #0
	muls r1, r0, r1
	adds r0, r1, #0
	mov r7, sp
	adds r7, #0xaa
	strh r0, [r7]
	movs r2, #0xa8
	adds r2, r2, r5
	mov sb, r2
	ldrh r0, [r2]
	ldr r2, [sp, #0xd4]
	adds r1, r2, #0
	muls r1, r0, r1
	adds r0, r1, #0
	add r6, sp, #0xac
	strh r0, [r6]
	ldrh r0, [r7]
	lsls r0, r0, #4
	mov r1, sp
	adds r1, #0xae
	str r1, [sp, #0xe0]
	strh r0, [r1]
	ldrh r0, [r6]
	lsls r0, r0, #4
	add r4, sp, #0xb0
	strh r0, [r4]
	ldr r0, [sp, #0xdc]
	bl sub_0800CBE0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803654A
_08036544:
	movs r0, #1
	rsbs r0, r0, #0
	b _080365DC
_0803654A:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080365B8
	ldr r2, [sp, #0xd8]
	ldrh r0, [r2]
	bl sub_08036D3C
	ldrb r1, [r0, #2]
	lsrs r1, r1, #1
	mov r2, r8
	strh r1, [r2]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #1
	mov r1, sb
	strh r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r3, r5, #0
	adds r3, #0xaa
	strh r0, [r3]
	ldrh r0, [r1]
	lsls r0, r0, #4
	adds r1, r5, #0
	adds r1, #0xac
	strh r0, [r1]
	mov r2, sl
	adds r2, #0xbc
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r3]
	ldrh r2, [r5]
	adds r0, r0, r2
	mov r1, sl
	strh r0, [r1]
	ldrh r0, [r5, #2]
	strh r0, [r1, #2]
	ldrh r0, [r5]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r5]
	ldr r1, _080365B0
	ldr r2, _080365B4
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080365D6
	.align 2, 0
_080365B0: .4byte gGame
_080365B4: .4byte 0x00008374
_080365B8:
	ldrh r0, [r7]
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r6]
	mov r2, sb
	strh r0, [r2]
	ldr r1, [sp, #0xe0]
	ldrh r0, [r1]
	adds r1, r5, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0xac
	strh r1, [r0]
_080365D6:
	mov r0, sl
	adds r0, #0x85
	ldrb r0, [r0]
_080365DC:
	add sp, #0xe4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
