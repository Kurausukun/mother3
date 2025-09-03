	.syntax unified
sub_08071FF8:
	push {r4, lr}
	ldr r1, _08072020
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _08072014
	ldr r4, _08072024
	movs r0, #0x2c
	bl __builtin_new
	bl sub_0807207C
	str r0, [r4]
_08072014:
	ldr r0, _08072024
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08072020: .4byte gUnknown_02001FA8
_08072024: .4byte gUnknown_02001FAC
	.syntax divided
