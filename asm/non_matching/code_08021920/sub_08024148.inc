	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _08024170
	movs r6, #0
	movs r1, #0x88
	lsls r1, r1, #4
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r6, r0
	bhs _080241F6
	ldr r2, _08024174
	adds r7, r4, r2
_08024160:
	ldrh r0, [r4]
	cmp r0, #1
	beq _080241E2
	cmp r0, #1
	bgt _08024178
	cmp r0, #0
	beq _0802417E
	b _080241E2
	.align 2, 0
_08024170: .4byte gUnknown_0201AB44
_08024174: .4byte 0x00000898
_08024178:
	cmp r0, #2
	beq _08024196
	b _080241E2
_0802417E:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080241E2
	movs r0, #1
	strh r0, [r4]
	ldr r0, [r4, #0x10]
	bl sub_08024510
	b _080241E2
_08024196:
	ldr r5, _08024290
	ldr r0, _08024294
	adds r1, r5, r0
	ldrh r0, [r4, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080241E2
	bl sub_080244D4
	adds r1, r0, #0
	cmp r1, #0
	beq _080241E2
	adds r0, r4, #0
	bl sub_08022368
	ldr r0, [r4, #0x10]
	ldr r2, _08024298
	adds r1, r5, r2
	ldrh r1, [r1]
	ldrh r2, [r4, #4]
	movs r3, #0xf
	str r3, [sp]
	subs r3, #0x10
	bl sub_08022474
	movs r0, #0
	strh r0, [r4]
	ldr r0, _0802429C
	adds r1, r5, r0
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r1, _080242A0
	str r1, [r7]
	movs r2, #4
	ldrsh r0, [r4, r2]
	lsls r0, r0, #6
	adds r0, r0, r1
	str r0, [r7]
_080241E2:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r4, #0x14
	ldr r0, _08024290
	ldr r1, _080242A4
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r6, r0
	blo _08024160
_080241F6:
	ldr r5, _08024290
	ldr r2, _08024294
	adds r3, r5, r2
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	ldrh r2, [r3]
	ldr r0, _080242A4
	adds r7, r5, r0
	ldrh r1, [r7]
	adds r0, #6
	adds r6, r5, r0
	ldrh r0, [r6]
	lsls r0, r0, #4
	muls r0, r1, r0
	cmp r2, r0
	blt _08024258
	ldr r1, _080242A8
	adds r2, r5, r1
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _080242AC
	adds r0, r5, r2
	ldrh r4, [r0]
	adds r4, #2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrh r0, [r3]
	ldrh r3, [r7]
	ldrh r1, [r6]
	lsls r2, r1, #4
	muls r2, r3, r2
	subs r0, r0, r2
	lsls r1, r1, #3
	bl __divsi3
	adds r4, r4, r0
	lsls r4, r4, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0xd
	ands r0, r4
	ldr r1, _080242B0
	adds r2, r5, r1
	ldr r1, _080242A0
	lsrs r0, r0, #0xa
	adds r0, r0, r1
	str r0, [r2]
_08024258:
	ldr r0, _080242B4
	ldr r2, _080242B8
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r1, [r6]
	bl sub_08002FD4
	cmp r0, #0
	bne _08024274
	ldr r0, _080242BC
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08024274:
	ldr r1, _080242C0
	adds r0, r5, r1
	ldrh r0, [r0]
	ldrh r1, [r5, #0x12]
	strh r0, [r5, #0x12]
	ldr r2, _080242BC
	adds r0, r5, r2
	ldrh r0, [r0]
	ldrh r1, [r5, #0x1a]
	strh r0, [r5, #0x1a]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024290: .4byte gSomeBlend
_08024294: .4byte 0x0000539E
_08024298: .4byte 0x00005398
_0802429C: .4byte 0x000053B0
_080242A0: .4byte 0x06006000
_080242A4: .4byte 0x0000539C
_080242A8: .4byte 0x00005548
_080242AC: .4byte 0x000053A4
_080242B0: .4byte 0x000053B4
_080242B4: .4byte gGame
_080242B8: .4byte 0x00009D10
_080242BC: .4byte 0x000053A8
_080242C0: .4byte 0x000053A6
	.syntax divided
