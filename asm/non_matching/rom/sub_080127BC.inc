	.syntax unified
sub_080127BC:
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _080127E8
	ldr r0, _080127E0
	ldr r1, _080127E4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08012826
	.align 2, 0
_080127E0: .4byte gGame
_080127E4: .4byte 0x000067C4
_080127E8:
	ldr r1, _0801282C
	movs r4, #0
	adds r6, r0, #0
	mov ip, r2
	movs r5, #2
	rsbs r5, r5, #0
_080127F4:
	ldrb r3, [r1, #0x14]
	lsls r0, r3, #0x1f
	cmp r0, #0
	beq _0801281A
	lsrs r0, r3, #3
	cmp r0, r6
	bne _0801281A
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	cmp r2, ip
	beq _08012814
	ldrb r0, [r1, #0x15]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, r2
	bne _0801281A
_08012814:
	adds r0, r5, #0
	ands r0, r3
	strb r0, [r1, #0x14]
_0801281A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, #0x18
	cmp r4, #0x13
	bls _080127F4
_08012826:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801282C: .4byte gUnknown_0200B960
	.syntax divided
