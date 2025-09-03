	.syntax unified
sub_08084CA0:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #4
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_08084E88
	b _08084CB6
_08084CB0:
	movs r0, #1
	bl setsleep
_08084CB6:
	ldr r0, [r4, #0x3c]
	cmp r0, #4
	beq _08084CB0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
