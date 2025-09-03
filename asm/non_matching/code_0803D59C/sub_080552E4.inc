	.syntax unified
sub_080552E4:
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #2
	beq _080552F4
	cmp r0, #4
	beq _08055334
	b _08055346
_080552F4:
	ldrb r1, [r2, #1]
	cmp r1, #0x8d
	beq _08055326
	cmp r1, #0x8d
	bgt _08055312
	cmp r1, #0x3c
	beq _08055326
	cmp r1, #0x3c
	bgt _0805530C
	cmp r1, #4
	beq _08055326
	b _08055330
_0805530C:
	cmp r1, #0x47
	beq _08055326
	b _08055330
_08055312:
	cmp r1, #0xf3
	beq _08055326
	cmp r1, #0xf3
	bgt _08055320
	cmp r1, #0xf1
	beq _08055326
	b _08055330
_08055320:
	ldr r0, _0805532C
	cmp r1, r0
	bne _08055330
_08055326:
	movs r0, #0x10
	b _08055346
	.align 2, 0
_0805532C: .4byte 0x00000289
_08055330:
	ldrb r0, [r2]
	b _08055346
_08055334:
	ldrb r0, [r2, #1]
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08055344
	movs r0, #0x12
	b _08055346
_08055344:
	movs r0, #4
_08055346:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
