	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _080522D0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080522EC
	movs r0, #0
	b _08052356
	.align 2, 0
_080522D0: .4byte gUnknown_020050C0
_080522D4:
	ldr r0, _080522E8
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0
	b _08052356
	.align 2, 0
_080522E8: .4byte gUnknown_020050C0
_080522EC:
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _08052300
	cmp r6, r0
	beq _08052354
	mov r8, r0
_080522FA:
	movs r4, #0
	b _0805230E
	.align 2, 0
_08052300: .4byte 0x0000FFFF
_08052304:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	beq _080522D4
_0805230E:
	ldr r0, _08052324
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r7, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08052304
	movs r4, #0
	b _08052332
	.align 2, 0
_08052324: .4byte gUnknown_02015E1C
_08052328:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	beq _080522D4
_08052332:
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08091308
	cmp r0, #0
	bne _08052328
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #5
	adds r7, r7, r0
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r8
	bne _080522FA
_08052354:
	movs r0, #1
_08052356:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
