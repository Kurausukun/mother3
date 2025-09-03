	.syntax unified
sub_080442D8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r2, _08044390
	movs r6, #0
	mov r0, sl
	lsls r7, r0, #0x10
_080442FE:
	ldr r0, _08044394
	lsls r5, r6, #1
	adds r0, r5, r0
	mov r3, sb
	ldrh r1, [r3, #0x30]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0804433E
	ldr r0, _08044398
	adds r0, r5, r0
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0804439C
	adds r0, r0, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	str r1, [sp]
	adds r1, r4, #0
	asrs r2, r7, #0x10
	movs r3, #0x20
	bl sub_08046A28
	adds r4, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080443A0
	adds r0, r5, r0
	ldrh r2, [r0]
_0804433E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #7
	bls _080442FE
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	beq _0804437E
	lsrs r0, r1, #0x10
	bl sub_080486A0
	lsls r1, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r1, r1, r2
	lsrs r1, r1, #0x10
	mov r3, sl
	lsls r2, r3, #0x10
	movs r3, #0xc0
	lsls r3, r3, #0xb
	adds r2, r2, r3
	lsrs r2, r2, #0x10
	movs r3, #0xf
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	adds r3, r5, #0
	bl sub_08047CDC
_0804437E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044390: .4byte 0x0000FFFF
_08044394: .4byte gUnknown_09B8FD08
_08044398: .4byte gUnknown_09B8FCF8
_0804439C: .4byte gUnknown_080C6260
_080443A0: .4byte gUnknown_09B8FD18
	.syntax divided
