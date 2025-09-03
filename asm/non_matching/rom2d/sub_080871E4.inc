	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r0, #0
	bl sub_0806DC78
	ldr r0, _0808723C
	str r0, [r5, #0x1c]
	ldr r1, _08087240
	mov r0, sp
	bl sub_080706A0
	add r6, sp, #0xc
	adds r0, r6, #0
	movs r1, #7
	bl sub_080706A0
	ldr r1, _08087244
	add r4, sp, #0x18
	adds r0, r4, #0
	bl sub_080706A0
	adds r0, r5, #0
	mov r1, sp
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0806DDA0
	ldr r0, _08087248
	str r0, [sp, #0x20]
	str r0, [sp, #0x14]
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806DEEC
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806DF04
	adds r0, r5, #0
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808723C: .4byte vt_09F84DC0
_08087240: .4byte 0x000003A5
_08087244: .4byte 0x00000287
_08087248: .4byte _vt.1D
	.syntax divided
