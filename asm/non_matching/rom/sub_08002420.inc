	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x10
	ldr r3, _0800244C
	asrs r0, r2, #0x10
	cmp r2, r3
	bne _08002454
	ldrh r0, [r1]
	lsrs r2, r3, #0x10
	cmp r0, r2
	beq _08002442
_08002436:
	strh r0, [r4]
	adds r1, #2
	adds r4, #2
	ldrh r0, [r1]
	cmp r0, r2
	bne _08002436
_08002442:
	ldr r1, _08002450
	adds r0, r1, #0
	strh r0, [r4]
	b _0800246E
	.align 2, 0
_0800244C: .4byte 0xFFFF0000
_08002450: .4byte 0x0000FFFF
_08002454:
	movs r3, #0
	cmp r3, r0
	bge _0800246E
	adds r2, r0, #0
_0800245C:
	ldrh r0, [r1]
	strh r0, [r4]
	adds r1, #2
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r2
	blt _0800245C
_0800246E:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
