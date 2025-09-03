	.syntax unified
sub_0807C4D4:
	push {r4, lr}
	ldr r4, _0807C4E8
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0807C4EC
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807C4E8: .4byte gUnknown_020021AC
_0807C4EC: .4byte vt_09F82540
	.syntax divided
