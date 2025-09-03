	.syntax unified
	push {r4, lr}
	ldr r2, _08056898
	ldrb r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x10]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08056884
	adds r4, r2, #0
_08056870:
	bl sub_0805689C
	bl sub_08001960
	bl sub_08056A80
	ldrb r0, [r4, #0x10]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08056870
_08056884:
	ldr r2, _08056898
	ldrb r1, [r2, #0x10]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056898: .4byte gUnknown_02015DA0
	.syntax divided
