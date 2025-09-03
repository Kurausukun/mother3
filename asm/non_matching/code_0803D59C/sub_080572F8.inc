	.syntax unified
sub_080572F8:
	push {r4, r5, lr}
	ldr r5, _08057340
	ldr r4, _08057344
	ldr r1, _08057348
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r1, #3
	bl __udivsi3
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #8
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_0800289C
	adds r5, r0, #0
	adds r4, #0x50
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r1, r0, #0
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r5, #0
	bl sub_08001B18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057340: .4byte gUnknown_09BCDD8C
_08057344: .4byte gSomeBlend
_08057348: .4byte 0x00002CE4
	.syntax divided
