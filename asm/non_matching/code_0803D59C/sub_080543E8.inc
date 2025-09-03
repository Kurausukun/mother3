	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa8
	mov sl, r0
	adds r7, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	cmp r7, #0
	beq _08054448
	cmp r2, #0
	beq _08054448
	ldr r4, [r7, #0x20]
	ldrh r1, [r7, #0x24]
	ldr r0, _0805443C
	ands r0, r6
	adds r6, r0, #0
	orrs r6, r1
	ldr r0, [r2, #8]
	str r0, [r7, #0x20]
	ldrh r0, [r2, #0x10]
	strh r0, [r7, #0x24]
	mov r0, sp
	mov r1, sl
	mov r2, sb
	adds r3, r7, #0
	bl sub_0805C5B8
	ldr r0, _08054440
	ldr r1, _08054444
	adds r0, r0, r1
	mov r1, sp
	movs r2, #0x54
	bl memcpy
	str r4, [r7, #0x20]
	strh r6, [r7, #0x24]
	b _080544DC
	.align 2, 0
_0805443C: .4byte 0xFFFF0000
_08054440: .4byte gSomeBlend
_08054444: .4byte 0x0000C5C8
_08054448:
	movs r5, #0
	ldr r0, _080544EC
	ldr r2, _080544F0
	adds r0, r0, r2
	add r6, sp, #0x54
	ldrh r3, [r0]
	cmp r5, r3
	bhs _0805448C
	mov r8, r0
_0805445A:
	adds r0, r5, #0
	bl sub_08054FE0
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08054FF0
	lsls r1, r5, #3
	mov r3, sp
	adds r2, r3, r1
	ldr r1, [r4, #0x20]
	str r1, [r2]
	ldrh r1, [r4, #0x24]
	strh r1, [r2, #4]
	ldr r1, [r0, #8]
	str r1, [r4, #0x20]
	ldrh r0, [r0, #0x10]
	strh r0, [r4, #0x24]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, r8
	ldrh r0, [r0]
	cmp r5, r0
	blo _0805445A
_0805448C:
	adds r0, r6, #0
	mov r1, sl
	mov r2, sb
	adds r3, r7, #0
	bl sub_0805C5B8
	ldr r4, _080544EC
	ldr r1, _080544F4
	adds r0, r4, r1
	adds r1, r6, #0
	movs r2, #0x54
	bl memcpy
	movs r5, #0
	ldr r2, _080544F0
	adds r4, r4, r2
	ldrh r3, [r4]
	cmp r5, r3
	bhs _080544DC
	adds r6, r4, #0
_080544B4:
	adds r0, r5, #0
	bl sub_08054FE0
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08054FF0
	lsls r0, r5, #3
	mov r2, sp
	adds r1, r2, r0
	ldr r0, [r1]
	str r0, [r4, #0x20]
	ldrh r0, [r1, #4]
	strh r0, [r4, #0x24]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r3, [r6]
	cmp r5, r3
	blo _080544B4
_080544DC:
	add sp, #0xa8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080544EC: .4byte gSomeBlend
_080544F0: .4byte 0x00002DFA
_080544F4: .4byte 0x0000C5C8
	.syntax divided
