	.syntax unified
	push {r4, lr}
	ldr r4, _080521E8
	add sp, r4
	bl sub_080914C4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080521F8
	ldr r1, _080521EC
	movs r0, #2
	bl sub_080910AC
	ldr r4, _080521F0
	ldr r0, _080521F4
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #5
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_0809123C
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _080521F8
	movs r0, #1
	b _080521FA
	.align 2, 0
_080521E8: .4byte 0xFFFFF000
_080521EC: .4byte gUnknown_02005204
_080521F0: .4byte gUnknown_0200F920
_080521F4: .4byte 0x00006478
_080521F8:
	movs r0, #0
_080521FA:
	movs r3, #0x80
	lsls r3, r3, #5
	add sp, r3
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
