	.syntax unified
sub_080024F0:
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	ldr r5, _0800251C
	asrs r0, r2, #0x10
	cmp r2, r5
	bne _08002524
	ldrh r1, [r3]
	lsrs r0, r5, #0x10
	cmp r1, r0
	beq _08002550
	adds r2, r0, #0
_0800250A:
	ldrh r0, [r4]
	adds r4, #2
	adds r3, #2
	cmp r1, r0
	bne _08002520
	ldrh r1, [r3]
	cmp r1, r2
	bne _0800250A
	b _08002550
	.align 2, 0
_0800251C: .4byte 0xFFFF0000
_08002520:
	movs r0, #0
	b _08002552
_08002524:
	movs r2, #0
	cmp r2, r0
	bge _08002550
	ldr r6, _08002558
	adds r5, r0, #0
_0800252E:
	ldrh r1, [r3]
	ldrh r0, [r4]
	adds r4, #2
	adds r3, #2
	cmp r1, r0
	bne _08002520
	ldrh r1, [r3]
	cmp r1, r6
	bne _08002546
	ldrh r0, [r4]
	cmp r0, r1
	beq _08002550
_08002546:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blt _0800252E
_08002550:
	movs r0, #1
_08002552:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08002558: .4byte 0x0000FFFF
	.syntax divided
