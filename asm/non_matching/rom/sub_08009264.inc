	.syntax unified
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08009288
	ldr r3, _0800928C
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _0800929E
	cmp r0, #1
	bgt _08009290
	cmp r0, #0
	beq _08009296
	b _080092AC
	.align 2, 0
_08009288: .4byte gSomeBlend
_0800928C: .4byte 0x00011C92
_08009290:
	cmp r0, #2
	beq _080092A6
	b _080092AC
_08009296:
	adds r0, r2, #0
	bl sub_080092B0
	b _080092AC
_0800929E:
	adds r0, r2, #0
	bl sub_0800932C
	b _080092AC
_080092A6:
	adds r0, r2, #0
	bl sub_08009394
_080092AC:
	pop {r0}
	bx r0
	.syntax divided
