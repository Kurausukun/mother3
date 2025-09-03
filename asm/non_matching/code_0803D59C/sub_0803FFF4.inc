	.syntax unified
	push {r4, lr}
	ldr r4, _08040018
	ldr r0, [r4, #0x14]
	ldr r1, _0804001C
	ldrh r2, [r4, #0xe]
	lsls r2, r2, #5
	bl sub_08001A14
	ldr r0, _08040020
	ldr r1, [r4, #0x18]
	movs r2, #0x12
	movs r3, #0x20
	bl sub_0800160C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040018: .4byte gUnknown_02005090
_0804001C: .4byte 0x06013C00
_08040020: .4byte gUnknown_02016078
	.syntax divided
