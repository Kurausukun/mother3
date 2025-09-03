	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x30
	adds r6, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_080498E4
	ldr r1, [r0]
	str r1, [sp]
	ldr r1, [r0, #4]
	str r1, [sp, #4]
	ldr r1, [r0, #0x10]
	str r1, [sp, #8]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0xc]
	ldr r1, [r0, #8]
	str r1, [sp, #0x18]
	ldr r1, [r0, #0xc]
	str r1, [sp, #0x1c]
	add r1, sp, #0x18
	mov r8, r1
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x20]
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x24]
	adds r4, r6, #0
	adds r4, #0xc8
	ldrb r2, [r4]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	mov r0, sp
	mov r1, r8
	bl sub_08002104
	ldr r0, _080491EC
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
	movs r3, #3
	bl sub_08001EA4
	ldrb r2, [r4]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	adds r0, r6, #0
	mov r1, r8
	movs r3, #3
	bl sub_08001EA4
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080491EC: .4byte gUnknown_0201D428
	.syntax divided
