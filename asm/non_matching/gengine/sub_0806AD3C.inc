	.syntax unified
sub_0806AD3C:
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, [r3, #0x20]
	cmp r1, #1
	beq _0806AD60
	cmp r1, #1
	bgt _0806AD50
	cmp r1, #0
	beq _0806AD5A
	b _0806ADF6
_0806AD50:
	cmp r1, #2
	beq _0806AD9E
	cmp r1, #3
	beq _0806ADC8
	b _0806ADF6
_0806AD5A:
	adds r0, r3, #0
	adds r0, #0x76
	b _0806ADF4
_0806AD60:
	movs r0, #0x76
	adds r0, r0, r3
	mov ip, r0
	movs r2, #0x40
	strh r2, [r0]
	ldrh r1, [r3, #0x24]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	strh r0, [r1]
	ldrh r1, [r3, #0x26]
	lsls r1, r1, #8
	movs r4, #0xfc
	lsls r4, r4, #6
	adds r2, r4, #0
	ands r1, r2
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrh r2, [r3, #0x28]
	movs r0, #0xff
	adds r1, r0, #0
	ands r1, r2
	ldrh r2, [r3, #0x2a]
	ands r0, r2
	lsls r0, r0, #8
	orrs r1, r0
	adds r0, r3, #0
	adds r0, #0x78
	b _0806ADF4
_0806AD9E:
	movs r4, #0x76
	adds r4, r4, r3
	mov ip, r4
	movs r2, #0x80
	strh r2, [r4]
	ldrh r1, [r3, #0x24]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	ldrh r1, [r3, #0x26]
	lsls r1, r1, #8
	movs r4, #0xfc
	lsls r4, r4, #6
	adds r2, r4, #0
	ands r1, r2
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrh r1, [r3, #0x2c]
	b _0806ADF0
_0806ADC8:
	movs r4, #0x76
	adds r4, r4, r3
	mov ip, r4
	movs r2, #0xc0
	strh r2, [r4]
	ldrh r1, [r3, #0x24]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	ldrh r1, [r3, #0x26]
	lsls r1, r1, #8
	movs r4, #0xfc
	lsls r4, r4, #6
	adds r2, r4, #0
	ands r1, r2
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrh r1, [r3, #0x2e]
_0806ADF0:
	adds r0, r3, #0
	adds r0, #0x7a
_0806ADF4:
	strh r1, [r0]
_0806ADF6:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
