	.syntax unified
sub_080479DC:
	push {r4, r5, lr}
	ldr r0, _08047A20
	ldrb r0, [r0]
	cmp r0, #8
	bne _08047A1A
	ldr r4, _08047A24
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08047A02
	movs r0, #0
	movs r1, #0
	movs r2, #2
	bl sub_08047A28
_08047A02:
	adds r0, r4, #0
	adds r0, #0xcc
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08047A1A
	movs r0, #1
	movs r1, #0
	movs r2, #6
	bl sub_08047A28
_08047A1A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08047A20: .4byte gUnknown_02004100
_08047A24: .4byte gUnknown_020050C0
	.syntax divided
