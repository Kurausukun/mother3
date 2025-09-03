	.syntax unified
cmd_8D:
	push {lr}
	ldr r0, _08021444
	ldr r1, _08021448
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _0802144C
	movs r0, #1
	bl scriptstack_push
	b _08021452
	.align 2, 0
_08021444: .4byte gGame
_08021448: .4byte 0x00008490
_0802144C:
	movs r0, #0
	bl scriptstack_push
_08021452:
	movs r0, #0
	pop {r1}
	bx r1
	.syntax divided
