	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r2, _08032FF4
	ldr r1, _08032FF8
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _080330C8
	ldr r2, _08032FFC
	adds r0, r5, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08032FE4
	bl sub_0803327C
_08032FE4:
	ldr r3, _08033000
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r0, #0
	beq _08033004
	bl sub_080330F0
	b _080330C8
	.align 2, 0
_08032FF4: .4byte gSomeBlend
_08032FF8: .4byte 0x000121B6
_08032FFC: .4byte 0x0000566C
_08033000: .4byte 0x000121B4
_08033004:
	ldr r2, _080330D0
	ldr r1, _080330D4
	movs r3, #0
	ldr r4, _080330D8
	adds r0, r5, r4
	ldr r6, _080330DC
	ldrh r4, [r0]
	cmp r3, r4
	bhs _08033038
	adds r4, r0, #0
_08033018:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #8
	ldrh r0, [r4]
	cmp r3, r0
	blo _08033018
_08033038:
	adds r4, r6, #0
	movs r3, #0
	ldr r1, _080330E0
	adds r0, r5, r1
	ldrh r1, [r0]
	cmp r3, r1
	bhs _08033070
	ldr r7, _080330E4
	adds r6, r0, #0
_0803304A:
	ldrb r1, [r4, #3]
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #4
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, #4
	ldrh r0, [r6]
	cmp r3, r0
	blo _0803304A
_08033070:
	ldr r3, _080330E0
	adds r1, r5, r3
	ldr r4, _080330D8
	adds r0, r5, r4
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bhi _0803309A
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
_0803308C:
	strh r1, [r2]
	adds r2, #8
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _0803308C
_0803309A:
	ldr r1, _080330E0
	adds r0, r5, r1
	movs r1, #0
	strh r1, [r0]
	ldr r2, _080330D8
	adds r0, r5, r2
	strh r1, [r0]
	ldr r3, _080330E8
	adds r0, r5, r3
	strh r1, [r0]
	ldr r4, _080330EC
	adds r2, r5, r4
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080330C8
	movs r0, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
_080330C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080330D0: .4byte gOAMObjBuffer
_080330D4: .4byte gMenuObjBuffer
_080330D8: .4byte 0x000121B2
_080330DC: .4byte gSceneObjBuffer
_080330E0: .4byte 0x000121B0
_080330E4: .4byte gUnknown_030038F0
_080330E8: .4byte 0x000121B4
_080330EC: .4byte 0x000121B6
	.syntax divided
