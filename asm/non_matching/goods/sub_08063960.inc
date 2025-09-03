	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r1, #1
	cmp r3, #2
	bgt _08063988
	cmp r2, #2
	bgt _08063988
	ldr r0, _08063984
	lsls r1, r3, #1
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r4, #0
	bl sub_080639A8
	b _0806398E
	.align 2, 0
_08063984: .4byte gUnknown_080F87B4
_08063988:
	adds r0, r4, #0
	bl __15struct_08063998
_0806398E:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
