	.syntax unified
sub_080AAFA4:
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
	cmp r0, #1
	ble _080AAFC6
	movs r0, #0xb9
	lsls r0, r0, #1
	b _080AAFC8
_080AAFC6:
	ldr r0, _080AAFD4
_080AAFC8:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AAFD4: .4byte 0x00000171
	.syntax divided
