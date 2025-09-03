	.syntax unified
sub_0803B278:
	push {r4, lr}
	ldr r4, _0803B2B8
	ldr r1, _0803B2BC
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803B2B2
	bl sub_0800A07C
	ldr r3, _0803B2C0
	adds r1, r4, r3
	ldrh r0, [r1]
	cmp r0, #5
	bhi _0803B2B2
	ldr r0, _0803B2C4
	ldrh r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r3, #0x56
	adds r1, r4, r3
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_0803B2B2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803B2B8: .4byte gSomeBlend
_0803B2BC: .4byte 0x00003668
_0803B2C0: .4byte 0x00003612
_0803B2C4: .4byte gUnknown_08D2E1C0
	.syntax divided
