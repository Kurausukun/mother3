	.syntax unified
sub_0806C964:
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0806C99A
	movs r3, #0
	adds r2, r0, #0
	cmp r3, r2
	bge _0806C998
	ldr r4, [r1, #8]
_0806C97C:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r4, r0
	ldr r0, [r0, #4]
	cmp r0, r5
	bhs _0806C992
	adds r3, r1, #1
	b _0806C994
_0806C992:
	adds r2, r1, #0
_0806C994:
	cmp r3, r2
	blt _0806C97C
_0806C998:
	adds r0, r3, #0
_0806C99A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
