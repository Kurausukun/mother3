	.syntax unified
sub_0807473C:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08074764
	str r0, [r4, #0x1c]
	bl get__10IrcManager
	ldr r1, _08074768
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069C84__3IrcUiG5Intr2
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._5Sound
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074764: .4byte vt_09F812F8
_08074768: .4byte gUnknown_08105CD0
	.syntax divided
