	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r0, #0x3c
	bl sub_080486A0
	movs r6, #1
	rsbs r6, r6, #0
	movs r4, #0xf
	str r4, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r1, #0x18
	movs r2, #0x30
	adds r3, r6, #0
	bl sub_08047CDC
	ldr r0, _08045E70
	ldr r1, _08045E74
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08045E78
	movs r0, #0x3e
	bl sub_080486A0
	str r4, [sp]
	str r5, [sp, #4]
	movs r1, #0x18
	movs r2, #0x3c
	adds r3, r6, #0
	bl sub_08047CDC
	movs r0, #0x3f
	bl sub_080486A0
	str r4, [sp]
	str r5, [sp, #4]
	movs r1, #0x18
	movs r2, #0x48
	adds r3, r6, #0
	bl sub_08047CDC
	movs r0, #0x40
	bl sub_080486A0
	str r4, [sp]
	str r5, [sp, #4]
	movs r1, #0x18
	movs r2, #0x54
	adds r3, r6, #0
	bl sub_08047CDC
	b _08045EA0
	.align 2, 0
_08045E70: .4byte gSomeBlend
_08045E74: .4byte 0x000041D3
_08045E78:
	movs r0, #0x3f
	bl sub_080486A0
	str r4, [sp]
	str r5, [sp, #4]
	movs r1, #0x18
	movs r2, #0x3c
	adds r3, r6, #0
	bl sub_08047CDC
	movs r0, #0x40
	bl sub_080486A0
	str r4, [sp]
	str r5, [sp, #4]
	movs r1, #0x18
	movs r2, #0x48
	adds r3, r6, #0
	bl sub_08047CDC
_08045EA0:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
