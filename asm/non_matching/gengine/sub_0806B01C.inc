	.syntax unified
sub_0806B01C:
	push {r4, lr}
	ldr r4, _0806B030
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806B034
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806B030: .4byte gUnknown_02001CCC
_0806B034: .4byte vt_09F7EF98
	.syntax divided
