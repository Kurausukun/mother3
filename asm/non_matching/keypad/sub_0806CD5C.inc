	.syntax unified
sub_0806CD5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	mov r3, ip
	adds r3, #0x46
	movs r0, #0
	strh r0, [r3]
	mov r4, ip
	adds r4, #0x48
	strh r0, [r4]
	ldr r0, [r1, #0x20]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806CD92
	ldr r0, _0806CDC8 @ =0x04000130
	ldrh r0, [r0]
	ldr r2, _0806CDCC @ =0x000003FF
	adds r1, r2, #0
	eors r1, r0
	mov r6, ip
	ldrh r2, [r6, #0x24]
	adds r0, r1, #0
	bics r0, r2
	strh r0, [r3]
	strh r1, [r6, #0x24]
_0806CD92:
	movs r7, #0
	adds r5, r4, #0
	mov r3, ip
	adds r3, #0x26
_0806CD9A:
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r7
	lsrs r4, r0, #0x10
	mov r8, r4
	mov r1, ip
	ldrh r0, [r1, #0x24]
	ands r0, r4
	cmp r0, #0
	beq _0806CDF6
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r1, #0x20]
	cmp r0, r2
	bne _0806CDD0
	ldrh r1, [r5]
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	b _0806CDF8
	.align 2, 0
_0806CDC8: .4byte 0x04000130
_0806CDCC: .4byte 0x000003FF
_0806CDD0:
	ldrh r0, [r3]
	mov r6, ip
	ldrh r1, [r6, #0x20]
	ldrh r2, [r6, #0x22]
	adds r1, r1, r2
	cmp r0, r1
	beq _0806CDE8
	ldrh r0, [r5]
	mov r1, r8
	bics r0, r1
	strh r0, [r5]
	b _0806CDF8
_0806CDE8:
	ldrh r1, [r5]
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r6, #0x22]
	subs r0, r0, r1
_0806CDF6:
	strh r0, [r3]
_0806CDF8:
	adds r3, #2
	adds r7, #1
	cmp r7, #0xf
	ble _0806CD9A
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
