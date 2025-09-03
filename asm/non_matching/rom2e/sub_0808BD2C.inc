	.syntax unified
sub_0808BD2C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	ldr r0, _0808BE30
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_0808BE60
	ldr r1, _0808BE34
	adds r0, r5, r1
	movs r1, #2
	bl _._10KeyFocuser
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r1, _0808BE38
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0806D9A4
	ldr r1, _0808BE3C
	adds r0, r5, r1
	ldr r6, _0808BE40
	str r6, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r5, r2
	str r6, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	ldr r1, _0808BE44
	adds r0, r5, r1
	movs r1, #2
	bl sub_0806D6E0
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r5, r2
	movs r1, #2
	bl sub_08071F14
	ldr r1, _0808BE48
	adds r0, r5, r1
	movs r1, #2
	bl sub_08071DE4
	movs r2, #0x99
	lsls r2, r2, #3
	adds r4, r5, r2
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808B194
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r5, r1
	cmp r0, #0
	beq _0808BDD4
	cmp r0, r4
	beq _0808BDD4
_0808BDB4:
	subs r4, #0xc4
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #2
	bl sub_0808E900
	str r6, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807113C
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r5, r2
	cmp r0, r4
	bne _0808BDB4
_0808BDD4:
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0808B194
	adds r6, r5, #0
	adds r6, #0xcc
	movs r1, #0x60
	adds r1, r1, r5
	mov r8, r1
	adds r7, r5, #0
	adds r7, #0x28
	cmp r6, #0
	beq _0808BE0E
	cmp r6, r4
	beq _0808BE0E
_0808BDF8:
	subs r4, #0x5c
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _0808BDF8
_0808BE0E:
	mov r0, r8
	movs r1, #2
	bl sub_0806D6E0
	cmp r7, #0
	beq _0808BE4C
	adds r4, r5, #0
	adds r4, #0x4c
_0808BE1E:
	cmp r7, r4
	beq _0808BE4C
	subs r4, #0xc
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0808BE1E
	bl __builtin_vec_delete
	b _0808BE1E
	.align 2, 0
_0808BE30: .4byte vt_09F85B28
_0808BE34: .4byte 0x00000854
_0808BE38: .4byte vt_09F82898
_0808BE3C: .4byte 0x00000764
_0808BE40: .4byte vt_09F7E458
_0808BE44: .4byte 0x0000069C
_0808BE48: .4byte 0x00000564
_0808BE4C:
	adds r0, r5, #0
	mov r1, sb
	bl _._4Base
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
