	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #2
	bl scriptstack_peek
	ldr r4, _08020318
	ldr r2, _0802031C
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r2, _08020320
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _08020324
	adds r4, r4, r1
	strh r0, [r4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08020318: .4byte gGame
_0802031C: .4byte 0x000083A8
_08020320: .4byte 0x000083AA
_08020324: .4byte 0x000083AC
	.syntax divided
