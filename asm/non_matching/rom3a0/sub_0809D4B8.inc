	.syntax unified
sub_0809D4B8:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D4EE
	adds r0, r4, #0
	adds r1, r5, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809D4EE
	movs r0, #0
	b _0809D4F0
_0809D4EE:
	movs r0, #1
_0809D4F0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
