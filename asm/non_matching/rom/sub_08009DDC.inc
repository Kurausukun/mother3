	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r3, _08009E00
	ldr r2, _08009E04
	adds r0, r3, r2
	ldrb r2, [r0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08009E08
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1d
	bl sub_08002254
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08009E0E
	.align 2, 0
_08009E00: .4byte gSomeBlend
_08009E04: .4byte 0x00011C92
_08009E08:
	ldr r1, _08009E14
	adds r0, r3, r1
	ldrb r0, [r0]
_08009E0E:
	pop {r1}
	bx r1
	.align 2, 0
_08009E14: .4byte 0x00011C88
	.syntax divided
