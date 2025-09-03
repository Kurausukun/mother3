	.syntax unified
sub_080242C4:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080242F4
	ldr r1, _080242F8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r2, _080242FC
	adds r4, r0, r2
	movs r6, #0
	ldr r1, _08024300
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r6, r2
	bhs _08024372
	adds r7, r0, #0
_080242E4:
	ldrh r0, [r4]
	cmp r0, #1
	beq _08024364
	cmp r0, #1
	bgt _08024304
	cmp r0, #0
	beq _0802430A
	b _08024364
	.align 2, 0
_080242F4: .4byte gSomeBlend
_080242F8: .4byte 0x000053AA
_080242FC: .4byte 0x00004B1C
_08024300: .4byte 0x0000539C
_08024304:
	cmp r0, #2
	beq _08024322
	b _08024364
_0802430A:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08024364
	movs r0, #1
	strh r0, [r4]
	ldr r0, [r4, #0x10]
	bl sub_08024510
	b _08024364
_08024322:
	ldr r5, _080243B4
	ldr r0, _080243B8
	adds r1, r5, r0
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08024364
	bl sub_080244D4
	adds r1, r0, #0
	cmp r1, #0
	beq _0802435A
	adds r0, r4, #0
	bl sub_08022368
	ldr r0, [r4, #0x10]
	ldr r2, _080243BC
	adds r1, r5, r2
	ldrh r1, [r1]
	movs r2, #0xf
	str r2, [sp]
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
	bl sub_08022474
	movs r0, #0
	strh r0, [r4]
_0802435A:
	ldr r0, _080243C0
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08024364:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #0x14
	ldrh r1, [r7]
	cmp r6, r1
	blo _080242E4
_08024372:
	ldr r3, _080243B4
	ldr r2, _080243C0
	adds r0, r3, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802438A
	ldr r1, _080243C4
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0802438A:
	ldr r2, _080243B8
	adds r0, r3, r2
	ldrh r0, [r0]
	movs r1, #0xf0
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1f
	bhi _080243C8
	movs r0, #0
	movs r1, #0x10
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x10
	movs r1, #0
	b _080243E6
	.align 2, 0
_080243B4: .4byte gSomeBlend
_080243B8: .4byte 0x0000539E
_080243BC: .4byte 0x00005398
_080243C0: .4byte 0x000053AA
_080243C4: .4byte 0x00005548
_080243C8:
	cmp r4, #0xcf
	bls _080243F4
	subs r4, #0xd0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x10
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0
	movs r1, #0x10
_080243E6:
	adds r2, r4, #0
	movs r3, #0x20
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _080243F8
_080243F4:
	movs r5, #0x10
	movs r3, #0
_080243F8:
	ldr r1, _0802442C
	ldrh r0, [r1]
	movs r2, #0
	ldr r0, _08024430
	strh r0, [r1]
	lsls r0, r3, #8
	orrs r5, r0
	ldrh r0, [r1, #2]
	strh r5, [r1, #2]
	ldrh r0, [r1, #4]
	strh r2, [r1, #4]
	ldr r0, _08024434
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r2, _08024438
	adds r0, r1, r2
	ldrh r0, [r0]
	ldrh r2, [r1, #0x12]
	strh r0, [r1, #0x12]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802442C: .4byte gSomeBlend
_08024430: .4byte 0x00001E41
_08024434: .4byte 0x0000539E
_08024438: .4byte 0x000053A6
	.syntax divided
