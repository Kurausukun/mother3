	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #7
	ldr r0, _080533E8
	adds r4, r2, r0
	movs r6, #0
	lsls r1, r1, #1
	movs r2, #0xd7
	lsls r2, r2, #4
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r6, r0
	bhs _080533DC
	ldr r2, _080533EC
	mov r8, r2
	adds r7, r1, #0
_080533AE:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080533CE
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	add r1, r8
	ldr r0, [r1]
	cmp r0, #1
	bne _080533CE
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl sub_08001B18
	adds r5, #4
_080533CE:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #4
	ldrh r0, [r7]
	cmp r6, r0
	blo _080533AE
_080533DC:
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080533E8: .4byte gUnknown_02019528
_080533EC: .4byte gUnknown_080E190C
	.syntax divided
