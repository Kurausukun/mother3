	.syntax unified
sub_08001F50:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsrs r2, r2, #6
	ldr r0, _08001FB0
	adds r7, r2, r0
	movs r1, #0xf0
	lsls r1, r1, #6
	adds r1, r1, r0
	mov r8, r1
	movs r0, #0
	cmp r0, ip
	bhs _08001FA4
_08001F76:
	movs r3, #0
	adds r6, r0, #1
_08001F7A:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r2, r7, r0
	add r0, r8
	ldr r1, [r0]
	ldr r0, [r5]
	bics r0, r1
	str r0, [r5]
	ldr r1, [r2]
	orrs r0, r1
	stm r5!, {r0}
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, #1
	cmp r3, #7
	bls _08001F7A
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r0, ip
	blo _08001F76
_08001FA4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001FB0: .4byte gUnknown_08CDF9F8
	.syntax divided
