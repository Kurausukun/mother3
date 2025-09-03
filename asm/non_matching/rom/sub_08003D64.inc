	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003DD0
	cmp r0, #0
	beq _08003D7C
	ldr r0, [r0, #4]
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	b _08003D7E
_08003D7C:
	movs r0, #0
_08003D7E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
