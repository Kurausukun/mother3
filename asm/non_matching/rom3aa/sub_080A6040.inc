	.syntax unified
sub_080A6040:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080A6062
	movs r0, #0x9c
	lsls r0, r0, #2
	b _080A6064
_080A6062:
	ldr r0, _080A6070
_080A6064:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6070: .4byte 0x0000026F
	.syntax divided
