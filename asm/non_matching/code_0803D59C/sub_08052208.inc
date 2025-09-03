	.syntax unified
sub_08052208:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _08052230
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805224C
	movs r0, #0
	b _08052298
	.align 2, 0
_08052230: .4byte gUnknown_020050C0
_08052234:
	ldr r0, _08052248
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0
	b _08052298
	.align 2, 0
_08052248: .4byte gUnknown_020050C0
_0805224C:
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _080522A4
	cmp r6, r0
	beq _08052296
	mov r8, r0
_0805225A:
	movs r4, #0
_0805225C:
	cmp r4, #1
	beq _08052234
	adds r0, r5, #0
	movs r1, #0
	adds r2, r7, #0
	movs r3, #0x80
	lsls r3, r3, #5
	bl sub_0809123C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08091308
	cmp r0, #0
	bne _0805225C
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
	bne _0805225A
_08052296:
	movs r0, #1
_08052298:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080522A4: .4byte 0x0000FFFF
	.syntax divided
