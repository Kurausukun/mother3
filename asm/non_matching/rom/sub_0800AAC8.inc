	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r5, _0800AB18
	ldr r1, _0800AB1C
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800AB28
	adds r0, r4, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0800AB20
	adds r3, r5, r0
	lsls r1, r7, #5
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r3, r1, r3
	ldr r1, _0800AB24
	adds r0, r3, #0
	stm r0!, {r1}
	str r1, [r3, #4]
	adds r0, #4
	stm r0!, {r1}
	stm r0!, {r1}
	stm r0!, {r1}
	stm r0!, {r1}
	stm r0!, {r1}
	str r1, [r0]
	b _0800AB54
	.align 2, 0
_0800AB18: .4byte gSomeBlend
_0800AB1C: .4byte 0x00011D16
_0800AB20: .4byte 0x00014F10
_0800AB24: .4byte 0x77777777
_0800AB28:
	adds r0, r4, #0
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0800AB5C
	movs r1, #0
	bl sub_0800289C
	lsls r1, r6, #5
	adds r0, r0, r1
	ldr r1, _0800AB60
	adds r3, r5, r1
	lsls r2, r7, #5
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #6
	adds r2, r2, r1
	adds r3, r2, r3
	adds r1, r3, #0
	movs r2, #0x20
	bl sub_08001B18
_0800AB54:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB5C: .4byte gUnknown_09AF3790
_0800AB60: .4byte 0x00014F10
	.syntax divided
