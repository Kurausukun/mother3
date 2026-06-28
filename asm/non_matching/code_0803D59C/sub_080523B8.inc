	.syntax unified
sub_080523B8:
	push {lr}
	bl snd_vsync_off
	ldr r0, _080523D0
	ldr r0, [r0]
	bl _call_via_r0
	bl snd_vsync_on
	pop {r0}
	bx r0
	.align 2, 0
_080523D0: .4byte gUnknown_02015E28
	.syntax divided
