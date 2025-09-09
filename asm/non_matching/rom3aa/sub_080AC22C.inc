	.syntax unified
sub_080AC22C:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bne _080AC252
	cmp r5, #3
	bne _080AC252
	movs r0, #0x82
	b _080AC25A
_080AC252:
	adds r0, r4, #0
	adds r1, r5, #0
	bl getElementWeakness__C4UnitUi
_080AC25A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
