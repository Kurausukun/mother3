	.syntax unified
	push {r4, lr}
	ldr r1, _080585EC
	ldrb r0, [r1, #0x12]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080585E6
	adds r4, r1, #0
_080585D2:
	bl sub_080585F8
	bl sub_08001960
	bl sub_08058790
	ldrb r0, [r4, #0x12]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080585D2
_080585E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080585EC: .4byte gUnknown_02015DC0
	.syntax divided
