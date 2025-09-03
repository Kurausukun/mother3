	.syntax unified
sub_080324D0:
	push {r4, r5, r6, r7, lr}
	adds r5, r2, #0
	ldr r2, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _0803252C
	ldr r4, _08032530
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, #0x7f
	bhi _08032526
	adds r4, r0, #0
	lsls r4, r4, #3
	ldr r0, _08032534
	adds r4, r4, r0
	ldrb r1, [r5]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xff
	ands r2, r0
	strh r2, [r4]
	lsls r2, r3, #0x17
	lsrs r2, r2, #0x17
	ldr r5, _08032538
	adds r3, r5, #0
	orrs r2, r3
	strh r2, [r4, #2]
	lsls r2, r1, #0xa
	orrs r2, r7
	lsls r3, r6, #0xc
	orrs r2, r3
	strh r2, [r4, #4]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08032DAC
_08032526:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803252C: .4byte gSomeBlend
_08032530: .4byte 0x000121B0
_08032534: .4byte gUnknown_030038F0
_08032538: .4byte 0xFFFF8000
	.syntax divided
