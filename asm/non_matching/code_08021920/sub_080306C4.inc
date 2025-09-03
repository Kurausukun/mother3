	.syntax unified
	push {r4, lr}
	ldr r4, _0803070C
	ldr r0, _08030710
	ldr r1, _08030714
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08030718
	cmp r1, r0
	bne _080306D8
	ldr r4, _0803071C
_080306D8:
	movs r0, #0xfe
	bl sub_08036D60
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r4, #0
	bl sub_08001B18
	movs r0, #0xa6
	bl sub_08036D60
	ldr r1, _08030720
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	movs r0, #0
	bl sub_08036DDC
	movs r1, #0x10
	movs r2, #0xe0
	bl sub_08016F4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803070C: .4byte 0x06016000
_08030710: .4byte gGame
_08030714: .4byte 0x000067AC
_08030718: .4byte 0x0000010F
_0803071C: .4byte 0x06016800
_08030720: .4byte 0x06017800
	.syntax divided
