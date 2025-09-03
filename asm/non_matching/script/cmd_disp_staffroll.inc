	.syntax unified
cmd_disp_staffroll:
	push {lr}
	movs r0, #0
	bl sub_0803C4DC
	ldr r1, _08020CFC
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08020D00
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #6
	bl sub_080052E4
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08020CFC: .4byte gUnknown_02004850
_08020D00: .4byte gGame
	.syntax divided
