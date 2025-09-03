	.syntax unified
sub_08058A48:
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_0800196C
	ldr r5, _08058A78
	adds r0, r5, #0
	bl sub_08058A80
	ldr r1, _08058A7C
	adds r0, r5, r1
	adds r1, #0x50
	adds r5, r5, r1
	adds r1, r5, #0
	bl sub_08058BCC
	bl sub_08058B04
	adds r0, r4, #0
	bl sub_080019A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058A78: .4byte gUnknown_020192B4
_08058A7C: .4byte 0xFFFFCD74
	.syntax divided
