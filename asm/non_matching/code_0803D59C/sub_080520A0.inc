	.syntax unified
sub_080520A0:
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x64
	muls r1, r2, r1
	adds r1, #8
	adds r1, r0, r1
	ldr r5, _080520F0
	ldrh r0, [r1, #0xc]
	ldr r2, _080520F4
	adds r4, r5, r2
	strh r0, [r4]
	lsls r0, r0, #0x10
	movs r2, #0
	cmp r0, #0
	beq _080520EA
	adds r3, r1, #0
	adds r3, #0xe
	movs r7, #0x6c
	ldr r0, _080520F8
	adds r6, r5, r0
	adds r5, r4, #0
	ldr r4, _080520FC
_080520CE:
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r1, r0, #0
	muls r1, r7, r1
	adds r1, r1, r4
	lsls r0, r2, #2
	adds r0, r0, r6
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r5]
	cmp r2, r0
	blo _080520CE
_080520EA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080520F0: .4byte gSomeBlend
_080520F4: .4byte 0x00002DFA
_080520F8: .4byte 0x00002CB0
_080520FC: .4byte gCharStats
	.syntax divided
