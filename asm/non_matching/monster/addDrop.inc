    .syntax unified
addDrop:
	push {lr}
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r2
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r2, r0, r3
	ldr r0, [r2]
	adds r3, r0, #1
	cmp r3, #3
	bgt _080816F4
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0, #4]
	str r3, [r2]
	movs r0, #1
	b _080816F6
_080816F4:
	movs r0, #0
_080816F6:
	pop {r1}
	bx r1
	.align 2, 0
    .syntax divided
