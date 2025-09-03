	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r7, r1, #0
	lsrs r4, r7, #4
	movs r0, #3
	ands r4, r0
	lsls r1, r4, #1
	adds r0, r1, r4
	lsls r6, r0, #2
	mov r2, ip
	adds r0, r6, r2
	ldr r5, [r0, #0x24]
	cmp r5, #0
	bgt _0806C6E8
	adds r0, r5, #0
	b _0806C72E
_0806C6E8:
	movs r3, #0
	subs r2, r5, #1
	mov r8, r1
	cmp r3, r2
	bge _0806C714
	mov r1, ip
	adds r0, r6, r1
	ldr r6, [r0, #0x28]
_0806C6F8:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r6, r0
	ldr r0, [r0, #4]
	cmp r0, r7
	bhs _0806C70E
	adds r3, r1, #1
	b _0806C710
_0806C70E:
	adds r2, r1, #0
_0806C710:
	cmp r3, r2
	blt _0806C6F8
_0806C714:
	mov r2, r8
	adds r0, r2, r4
	lsls r0, r0, #2
	add r0, ip
	lsls r1, r3, #3
	ldr r0, [r0, #0x28]
	adds r0, r0, r1
	ldr r0, [r0, #4]
	adds r1, r5, #0
	cmp r0, r7
	bne _0806C72C
	adds r1, r3, #0
_0806C72C:
	adds r0, r1, #0
_0806C72E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
