	.syntax unified
	push {r4, lr}
	ldr r4, _0803FD00
	adds r0, r4, #0
	movs r1, #0x27
	bl sub_0800289C
	ldr r1, _0803FD04
	bl sub_08090F88
	ldr r0, _0803FD08
	ldr r1, _0803FD0C
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #0x28
	adds r0, r4, #0
	bl sub_0800289C
	adds r1, r0, #0
	ldr r0, _0803FD10
	movs r2, #2
	movs r3, #0x40
	bl sub_0800160C
	movs r0, #2
	movs r1, #2
	bl sub_08056584
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803FD00: .4byte gMenuData
_0803FD04: .4byte 0x06001000
_0803FD08: .4byte gSave
_0803FD0C: .4byte 0x0000081E
_0803FD10: .4byte gUnknown_02016078
	.syntax divided
