	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	cmp r0, r1
	bhs _080025CA
	ldr r5, _080025D4
	movs r4, #0xff
	lsls r4, r4, #8
_080025B4:
	adds r0, #1
_080025B6:
	ldrh r2, [r3]
	adds r3, #2
	cmp r2, r5
	beq _080025C2
	cmp r2, r4
	bne _080025B6
_080025C2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	blo _080025B4
_080025CA:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080025D4: .4byte 0x0000FFFF
	.syntax divided
