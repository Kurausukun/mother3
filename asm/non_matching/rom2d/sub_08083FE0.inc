	.syntax unified
sub_08083FE0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _08084034
	str r0, [r5, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #4
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl _._10KeyFocuser
	adds r0, r5, #0
	adds r0, #0xa0
	cmp r0, #0
	beq _0808401C
	cmp r0, r4
	beq _0808401C
	adds r6, r0, #0
_08084006:
	subs r4, #0x58
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _08084006
_0808401C:
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #2
	bl _._11Unk0806D64C
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084034: .4byte vt_09F83DB0
	.syntax divided
