	.syntax unified
sub_0806C9D4__10ObjPltPooli:
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r0, #0x20
	ldr r4, [r0, #4]
	cmp r4, #0
	bgt _0806C9E4
	adds r0, r4, #0
	b _0806CA1E
_0806C9E4:
	movs r3, #0
	subs r2, r4, #1
	adds r7, r0, #0
	cmp r3, r2
	bge _0806CA0C
	ldr r6, [r7, #8]
_0806C9F0:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r6, r0
	ldr r0, [r0, #4]
	cmp r0, r5
	bhs _0806CA06
	adds r3, r1, #1
	b _0806CA08
_0806CA06:
	adds r2, r1, #0
_0806CA08:
	cmp r3, r2
	blt _0806C9F0
_0806CA0C:
	lsls r0, r3, #3
	ldr r1, [r7, #8]
	adds r1, r1, r0
	ldr r0, [r1, #4]
	adds r1, r4, #0
	cmp r0, r5
	bne _0806CA1C
	adds r1, r3, #0
_0806CA1C:
	adds r0, r1, #0
_0806CA1E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
