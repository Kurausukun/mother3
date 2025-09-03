	.syntax unified
	push {lr}
	bl sub_08004114
	bl sub_0800408C
	ldr r0, _08004080
	ldrb r0, [r0]
	cmp r0, #1
	bne _08004066
	ldr r0, _08004084
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004066
	bl sub_080269AC
	bl sub_08026724
_08004066:
	ldr r0, _08004080
	ldrb r0, [r0]
	cmp r0, #2
	bne _0800407A
	ldr r0, _08004088
	ldrb r0, [r0]
	cmp r0, #7
	bne _0800407A
	bl sub_08023F4C
_0800407A:
	pop {r0}
	bx r0
	.align 2, 0
_08004080: .4byte gUnknown_020051E4
_08004084: .4byte gEncounter
_08004088: .4byte gUnknown_02004100
	.syntax divided
