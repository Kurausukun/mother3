	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #0x3d
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #0x18
	movs r2, #0x30
	bl sub_08047CDC
	movs r7, #0
	movs r6, #0
	ldr r0, _08046264
	ldr r1, _08046268
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r6, r1
	bhs _08046256
	mov r8, r0
_08046210:
	adds r0, r6, #0
	bl sub_08054FE0
	adds r4, r0, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08046248
	ldrb r0, [r4]
	bl sub_08054FB8
	adds r2, r7, #0
	adds r2, #0x3c
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0xf
	str r1, [sp]
	str r5, [sp, #4]
	movs r1, #0x18
	movs r3, #9
	bl sub_08047CDC
	adds r0, r7, #0
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08046248:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, r8
	ldrh r0, [r0]
	cmp r6, r0
	blo _08046210
_08046256:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046264: .4byte gSomeBlend
_08046268: .4byte 0x00002DFA
	.syntax divided
