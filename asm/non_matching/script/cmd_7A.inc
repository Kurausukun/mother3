	.syntax unified
cmd_7A:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #3
	bl scriptstack_peek
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r5, #9
	bls _080204EC
	cmp r5, #0x1d
	bls _080204A4
	adds r0, r5, #0
	subs r0, #0x1e
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _0802049C
	ldr r0, _080204A0
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	b _08020500
	.align 2, 0
_0802049C: .4byte gGame
_080204A0: .4byte 0x000067C5
_080204A4:
	cmp r5, #0x13
	bls _080204C8
	adds r0, r5, #0
	subs r0, #0x14
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _080204C0
	ldr r0, _080204C4
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	b _080204FA
	.align 2, 0
_080204C0: .4byte gGame
_080204C4: .4byte 0x000067C5
_080204C8:
	adds r0, r5, #0
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _080204E4
	ldr r0, _080204E8
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	b _08020500
	.align 2, 0
_080204E4: .4byte gGame
_080204E8: .4byte 0x000067C5
_080204EC:
	ldr r2, _0802051C
	ldr r0, _08020520
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
_080204FA:
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
_08020500:
	strb r0, [r2]
	cmp r5, #2
	bhi _08020512
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08019BF0
_08020512:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802051C: .4byte gGame
_08020520: .4byte 0x000067C5
	.syntax divided
