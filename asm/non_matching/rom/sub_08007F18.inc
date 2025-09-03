	.syntax unified
	push {r4, lr}
	ldr r4, _08007F58
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0800289C
	ldr r1, _08007F5C
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001B18
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_0800289C
	movs r1, #0x1c
	movs r2, #0x20
	bl sub_08016F4C
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_0800289C
	ldr r1, _08007F60
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007F58: .4byte gUnknown_09AF3790
_08007F5C: .4byte 0x06017000
_08007F60: .4byte 0x06014400
	.syntax divided
