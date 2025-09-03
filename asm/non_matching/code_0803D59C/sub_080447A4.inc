	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r0, #0x88
	bl sub_080486A0
	movs r6, #1
	rsbs r6, r6, #0
	movs r5, #0xf
	str r5, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r1, #0x14
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_08047CDC
	movs r0, #0x89
	bl sub_080486A0
	str r5, [sp]
	str r4, [sp, #4]
	movs r1, #0x14
	movs r2, #0x2c
	adds r3, r6, #0
	bl sub_08047CDC
	movs r0, #0x8a
	bl sub_080486A0
	str r5, [sp]
	str r4, [sp, #4]
	movs r1, #0x14
	movs r2, #0x38
	adds r3, r6, #0
	bl sub_08047CDC
	ldr r1, _08044854
	ldr r2, _08044858
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _0804484C
	movs r6, #0
	movs r5, #0
	ldr r2, _0804485C
	adds r0, r1, r2
	ldrh r1, [r0]
	cmp r5, r1
	bhs _0804484C
	adds r7, r0, #0
_08044808:
	adds r0, r5, #0
	bl sub_08054FE0
	adds r4, r0, #0
	bl sub_0805504C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08044840
	ldrb r0, [r4]
	bl sub_08054FB8
	adds r2, r6, #0
	adds r2, #0x4e
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0x14
	movs r3, #9
	bl sub_08047CDC
	adds r0, r6, #0
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08044840:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r2, [r7]
	cmp r5, r2
	blo _08044808
_0804484C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044854: .4byte gSomeBlend
_08044858: .4byte 0x00004260
_0804485C: .4byte 0x00002DFA
	.syntax divided
