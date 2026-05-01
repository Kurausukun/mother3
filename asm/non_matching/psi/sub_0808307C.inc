	.syntax unified
sub_0808307C:
	push {r4, lr}
	ldr r4, _08083090
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08083094
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08083090: .4byte sPsiRTTI
_08083094: .4byte _vt.7PsiRTTI
	.syntax divided
