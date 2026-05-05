	.syntax unified
sub_0807254C:
	push {r4, lr}
	ldr r4, _08072560
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08072564
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08072560: .4byte sKeyFocusManagerManager
_08072564: .4byte _vt.22KeyFocusManagerManager
	.syntax divided
