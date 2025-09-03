	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r2, #0
	cmp r2, r5
	bhs _08048528
	ldrh r0, [r1]
	ldr r4, _08048530
	cmp r0, r4
	beq _08048528
_08048512:
	strh r0, [r3]
	adds r1, #2
	adds r3, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	bhs _08048528
	ldrh r0, [r1]
	cmp r0, r4
	bne _08048512
_08048528:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08048530: .4byte 0x0000FFFF
	.syntax divided
