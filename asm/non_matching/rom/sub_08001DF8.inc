	.syntax unified
sub_08001DF8:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsrs r2, r2, #6
	ldr r0, _08001E3C
	adds r6, r2, r0
	movs r0, #0
	cmp r0, r7
	bhs _08001E36
_08001E10:
	movs r2, #0
	adds r3, r0, #1
_08001E14:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, #1
	cmp r2, #7
	bls _08001E14
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	blo _08001E10
_08001E36:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001E3C: .4byte gUnknown_08CDB9F8
	.syntax divided
