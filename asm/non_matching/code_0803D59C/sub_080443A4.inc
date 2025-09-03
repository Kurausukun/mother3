	.syntax unified
sub_080443A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	movs r5, #0
	lsls r6, r2, #0x10
_080443BA:
	ldr r0, _08044408
	lsls r2, r5, #1
	adds r0, r2, r0
	mov r3, r8
	ldrh r1, [r3, #0x30]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _080443F2
	ldr r0, _0804440C
	adds r0, r2, r0
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08044410
	adds r0, r0, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r7, [sp]
	adds r1, r4, #0
	asrs r2, r6, #0x10
	movs r3, #0x20
	bl sub_08046A28
	adds r4, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
_080443F2:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bls _080443BA
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044408: .4byte gUnknown_09B8FD08
_0804440C: .4byte gUnknown_09B8FCF8
_08044410: .4byte gUnknown_080C6260
	.syntax divided
