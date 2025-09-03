	.syntax unified
	push {lr}
	ldr r0, _08021470
	ldr r1, _08021474
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #3
	bne _08021478
	movs r0, #1
	bl scriptstack_push
	b _0802147E
	.align 2, 0
_08021470: .4byte gGame
_08021474: .4byte 0x00008490
_08021478:
	movs r0, #0
	bl scriptstack_push
_0802147E:
	movs r0, #0
	pop {r1}
	bx r1
	.syntax divided
