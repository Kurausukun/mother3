	.syntax unified
sub_08059128:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r2, r0, #0
	lsls r2, r2, #0x10
	mov r0, sp
	strh r1, [r0]
	ldr r0, _080591B4
	movs r1, #0x9c
	lsls r1, r1, #0xf
	adds r2, r2, r1
	lsrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_0800289C
	adds r5, r0, #0
	ldr r6, _080591B8
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805915C
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
_0805915C:
	movs r0, #0
	movs r1, #0xf
	mov sb, r1
_08059162:
	movs r4, #0
	movs r1, #0x40
	adds r1, r1, r5
	mov ip, r1
	movs r1, #0x40
	adds r1, r1, r6
	mov r8, r1
	adds r7, r0, #1
_08059172:
	lsls r0, r4, #1
	adds r3, r0, r6
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1c
	adds r1, #0xe
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1d
	bls _08059172
	mov r5, ip
	mov r6, r8
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _08059162
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080591B4: .4byte gUnknown_09C5FD2C
_080591B8: .4byte gUnknown_020192BC
	.syntax divided
