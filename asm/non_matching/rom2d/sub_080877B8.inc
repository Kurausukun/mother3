	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	adds r2, #0xa8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	movs r1, #0x85
	lsls r1, r1, #3
	adds r5, r4, r1
	ldr r1, [r5]
	ldr r2, [r2, #4]
	bl _call_via_r2
	cmp r0, #0
	beq _08087824
	ldr r1, _080877EC
	adds r2, r4, r1
	ldr r1, [r2]
	cmp r1, #1
	beq _08087802
	cmp r1, #1
	bgt _080877F0
	cmp r1, #0
	beq _080877F6
	b _08087820
	.align 2, 0
_080877EC: .4byte 0x00000434
_080877F0:
	cmp r1, #2
	beq _08087814
	b _08087820
_080877F6:
	str r0, [r5]
	movs r2, #0x86
	lsls r2, r2, #3
	adds r0, r4, r2
	strh r1, [r0]
	b _08087820
_08087802:
	str r0, [r5]
	movs r1, #0x86
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r1, #0
	strh r1, [r0]
	movs r0, #2
	str r0, [r2]
	b _08087820
_08087814:
	str r0, [r5]
	movs r2, #0x86
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #0
	strh r0, [r1]
_08087820:
	movs r0, #1
	b _08087826
_08087824:
	movs r0, #0
_08087826:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
