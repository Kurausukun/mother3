	.syntax unified
sub_08033374:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	bl get_obj_direct
	adds r6, r0, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080333C2
	adds r7, r6, #0
	adds r7, #0x86
	ldrb r0, [r7]
	adds r5, r6, #0
	adds r5, #0x88
	ldrh r1, [r5]
	movs r2, #4
	bl sub_08035C0C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrb r0, [r7]
	ldrh r1, [r5]
	movs r2, #0
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r8, r4
	beq _080333C2
	cmp r8, r0
	bne _08033404
_080333C2:
	adds r1, r6, #0
	adds r1, #0x8b
	ldrb r0, [r1]
	cmp r0, r8
	beq _08033404
	movs r2, #0
	mov r0, r8
	strb r0, [r1]
	adds r1, #1
	ldr r0, _08033410
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x92
	strh r2, [r0]
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r3, r6, #0
	adds r3, #0xca
	ldrb r2, [r3]
	movs r1, #9
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0xcc
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
_08033404:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033410: .4byte 0x0000FFFF
	.syntax divided
