	.syntax unified
sub_08082B78:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl __6ActionP4Unit
	ldr r0, _08082BA0
	str r0, [r5, #0x1c]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _08082BA4
	adds r0, r0, r1
	str r0, [r5, #0x48]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08082BA0: .4byte vt_09F83958
_08082BA4: .4byte gPsiData
	.syntax divided
