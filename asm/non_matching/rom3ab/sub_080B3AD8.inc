	.syntax unified
sub_080B3AD8:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080B3AEC
	movs r2, #9
	bl genMisctextMsg__3MsgPvUi
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B3AEC: .4byte gUnknown_02004F14
	.syntax divided
