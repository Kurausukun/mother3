	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r6, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_080498E4
	adds r3, r0, #0
	movs r2, #0
	add r7, sp, #0x18
	movs r4, #0
_080490E6:
	mov r0, sp
	adds r1, r0, r2
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #8
	add r0, sp
	strb r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #7
	bls _080490E6
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	adds r4, r6, #0
	adds r4, #0xc8
	ldrb r2, [r4]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002104
	ldr r0, _0804915C
	adds r5, r6, #0
	adds r5, #8
	adds r6, #0x68
	ldr r3, [r4]
	lsls r3, r3, #0xf
	lsrs r3, r3, #0x16
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080491F0
	ldrb r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r5, #0
	mov r1, sp
	movs r3, #2
	bl sub_08001EA4
	ldrb r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #2
	bl sub_08001EA4
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804915C: .4byte gUnknown_0201D428
	.syntax divided
