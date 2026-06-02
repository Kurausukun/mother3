	.syntax unified
__9PsiMagnetUsP4Unit:
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __3PsiUsP4Unit
	ldr r0, _080BC45C
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080BC45C: .4byte _vt.9PsiMagnet
	.syntax divided
