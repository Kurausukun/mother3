	.syntax unified
sub_0808782C:
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _08087844
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08087848
	movs r0, #0
	b _0808788A
	.align 2, 0
_08087844: .4byte 0x00000434
_08087848:
	ldr r3, _08087894
	adds r6, r5, r3
	ldr r2, [r6]
	cmp r2, #0
	beq _08087880
	ldr r1, [r2, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	cmp r4, #0
	ble _0808787C
	mov r0, sp
	bl sub_08071F8C
	adds r0, r4, #0
	bl setsleep
	mov r0, sp
	movs r1, #2
	bl _._10KeyFocuser
_0808787C:
	movs r0, #0
	str r0, [r6]
_08087880:
	ldr r0, _08087898
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #1
_0808788A:
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08087894: .4byte 0x0000042C
_08087898: .4byte 0x00000434
	.syntax divided
