	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	cmp r2, #0x18
	ble _080271EC
	subs r2, #0x19
	ldr r3, _080271BC
	ldr r1, _080271C0
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080271C8
	adds r2, #5
	ldr r4, _080271C4
	adds r1, r3, r4
	adds r4, #3
	adds r0, r3, r4
	ldrb r0, [r0]
	mvns r0, r0
	ldrb r1, [r1]
	adds r0, r0, r1
	b _080271D8
	.align 2, 0
_080271BC: .4byte gGame
_080271C0: .4byte 0x00008382
_080271C4: .4byte 0x00008370
_080271C8:
	adds r2, #5
	ldr r1, _080271E4
	adds r0, r3, r1
	ldrb r0, [r0]
	ldr r4, _080271E8
	adds r1, r3, r4
	ldrb r1, [r1]
	subs r0, r0, r1
_080271D8:
	adds r2, r2, r0
	cmp r2, #0x18
	ble _08027234
_080271DE:
	movs r0, #0
	b _0802723C
	.align 2, 0
_080271E4: .4byte 0x00008370
_080271E8: .4byte 0x00008373
_080271EC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08027210
	ldr r0, _08027208
	ldr r3, _0802720C
	adds r1, r0, r3
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, r2
	beq _080271DE
	movs r0, #0
	ldrsh r2, [r1, r0]
	b _08027234
	.align 2, 0
_08027208: .4byte gGame
_0802720C: .4byte 0x00008450
_08027210:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0802721C
	movs r2, #0
	b _08027234
_0802721C:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080271DE
	cmp r2, #4
	bhi _08027234
	ldr r0, _08027244
	ldr r1, _08027248
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r2, r0
	bge _080271DE
_08027234:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
_0802723C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08027244: .4byte gGame
_08027248: .4byte 0x00008299
	.syntax divided
