	.syntax unified
sub_080244D4:
	push {r4, r5, r6, lr}
	ldr r3, _080244F8
	movs r4, #0
	movs r6, #1
	movs r5, #1
_080244DE:
	adds r2, r3, #0
	adds r2, #0x30
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080244FC
	adds r0, r1, #0
	orrs r0, r6
	strb r0, [r2]
	adds r0, r3, #0
	b _0802450A
	.align 2, 0
_080244F8: .4byte gUnknown_0201B184
_080244FC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #0x34
	cmp r4, #0xa
	bls _080244DE
	movs r0, #0
_0802450A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
