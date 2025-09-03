	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _0808D45C
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0808D470
	ldr r1, _0808D460
	adds r0, r5, r1
	movs r1, #2
	bl _._10KeyFocuser
	movs r2, #0x98
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r1, _0808D464
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0806D9A4
	ldr r1, _0808D468
	adds r0, r5, r1
	ldr r4, _0808D46C
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	movs r2, #0x81
	lsls r2, r2, #3
	adds r0, r5, r2
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	movs r1, #0xf6
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #2
	bl sub_080867C0
	movs r2, #0xdb
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #2
	bl sub_0806D6E0
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808B194
	adds r0, r5, #0
	adds r0, #0xa8
	cmp r0, #0
	beq _0808D444
	cmp r0, r4
	beq _0808D444
	adds r6, r0, #0
_0808D42E:
	subs r4, #0x5c
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _0808D42E
_0808D444:
	adds r0, r5, #0
	adds r0, #0x3c
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D45C: .4byte vt_09F85C30
_0808D460: .4byte 0x00000554
_0808D464: .4byte vt_09F82898
_0808D468: .4byte 0x00000464
_0808D46C: .4byte vt_09F7E458
	.syntax divided
