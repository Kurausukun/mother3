	.syntax unified
cmd_open_naming:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	bl sub_0803C4DC
	ldr r4, _08021620
	movs r0, #0xc
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	strb r0, [r4, #1]
	ldr r1, _08021624
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #2
	bl sub_080052E4
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08021620: .4byte gUnknown_02004100
_08021624: .4byte gGame
	.syntax divided
