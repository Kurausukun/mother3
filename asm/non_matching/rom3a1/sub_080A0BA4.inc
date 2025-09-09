	.syntax unified
sub_080A0BA4:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	movs r1, #5
	bl isMonsterVariant
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A0BC4
	adds r0, r5, #0
	adds r1, r4, #0
	bl isResisted__6ActionP4Unit
	b _080A0BC6
_080A0BC4:
	movs r0, #0
_080A0BC6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
