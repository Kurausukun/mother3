	.syntax unified
	push {r4, lr}
	ldr r4, _0803FEE8
	adds r0, r4, #0
	movs r1, #0x52
	bl sub_0800289C
	ldr r1, _0803FEEC
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001B18
	adds r0, r4, #0
	movs r1, #0x53
	bl sub_0800289C
	adds r1, r0, #0
	ldr r0, _0803FEF0
	movs r2, #2
	movs r3, #0x20
	bl sub_0800160C
	movs r0, #2
	movs r1, #1
	bl sub_08056584
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803FEE8: .4byte gMenuData
_0803FEEC: .4byte 0x06001000
_0803FEF0: .4byte gUnknown_02016078
	.syntax divided
