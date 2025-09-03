	.syntax unified
sub_0802503C:
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r0, #0x88
	lsls r0, r0, #4
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080250B0
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r1, r3, #0
	movs r5, #0
	movs r2, #0
	movs r6, #1
	movs r4, #0xa0
_08025062:
	strh r6, [r1]
	strh r4, [r1, #4]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r1, #0x14
	cmp r5, #0x4f
	bls _08025062
	movs r0, #0xc8
	lsls r0, r0, #3
	adds r4, r3, r0
	movs r5, #0
	movs r0, #2
	rsbs r0, r0, #0
	adds r6, r0, #0
_08025086:
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_08001B54
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0]
	ands r1, r6
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x34
	cmp r5, #0xa
	bls _08025086
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080250B0: .4byte 0x00000A2C
	.syntax divided
