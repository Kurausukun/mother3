	.syntax unified
sub_08097C94:
	push {lr}
	ldr r0, _08097CAC
	movs r1, #1
	bl set_event_flag
	ldr r0, _08097CB0
	movs r1, #1
	bl set_event_flag
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08097CAC: .4byte 0x00000173
_08097CB0: .4byte 0x00000285
	.syntax divided
