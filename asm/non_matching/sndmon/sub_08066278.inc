	.syntax unified
sub_08066278:
	push {r4, lr}
	ldr r4, _0806628C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08066290
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806628C: .4byte gUnknown_020040E0
_08066290: .4byte vt_09F7E310
	.syntax divided
