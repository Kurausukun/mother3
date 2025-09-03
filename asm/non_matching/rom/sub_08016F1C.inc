	.syntax unified
	push {lr}
	ldr r0, _08016F40
	ldr r1, _08016F44
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08016F3C
	ldr r0, _08016F48
	ldrb r0, [r0]
	cmp r0, #2
	beq _08016F38
	cmp r0, #4
	bne _08016F3C
_08016F38:
	bl sub_0800882C
_08016F3C:
	pop {r0}
	bx r0
	.align 2, 0
_08016F40: .4byte gGame
_08016F44: .4byte 0x00009D14
_08016F48: .4byte gUnknown_020051E4
	.syntax divided
