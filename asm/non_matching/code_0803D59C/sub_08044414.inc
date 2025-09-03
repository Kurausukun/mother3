	.syntax unified
sub_08044414:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrb r0, [r0]
	bl sub_08054FB8
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	mov r8, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r4, r4, r1
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r6, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r5, r5, r1
	lsrs r5, r5, #0x10
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	mov sb, r1
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #9
	bl sub_08047CDC
	ldr r4, _080444A8
	mov r1, r8
	adds r1, #0x28
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r6, #0x48
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r0, sb
	str r0, [sp]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	adds r4, #0x14
	movs r1, #0x48
	add r8, r1
	mov r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	str r1, [sp]
	adds r0, r4, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #0x20
	bl sub_08046A28
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080444A8: .4byte gUnknown_080C63C8
	.syntax divided
