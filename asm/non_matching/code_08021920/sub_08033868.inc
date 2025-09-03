	.syntax unified
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	strh r2, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08033892
	adds r0, r4, #0
	bl sub_08036650
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
	b _080338A4
_08033892:
	adds r0, r1, #0
	bl sub_08036C80
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08036A1C
_080338A4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
