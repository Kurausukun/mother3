	.syntax unified
	push {r4, lr}
	ldr r4, _08006960
	adds r0, r4, #0
	bl sub_08006968
	ldr r0, _08006964
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08006ACC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006960: .4byte gUnknown_0200C3C8
_08006964: .4byte 0xFFFFF2B8
	.syntax divided
