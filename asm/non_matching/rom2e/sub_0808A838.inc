	.syntax unified
sub_0808A838:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #8
	bhi _0808A8CE
	lsls r0, r2, #2
	ldr r1, _0808A84C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808A84C: .4byte _0808A850
_0808A850:
	.4byte _0808A874
	.4byte _0808A880
	.4byte _0808A88C
	.4byte _0808A892
	.4byte _0808A896
	.4byte _0808A89E
	.4byte _0808A8A6
	.4byte _0808A8B4
	.4byte _0808A8BA
_0808A874:
	movs r0, #0
	ldr r1, _0808A87C
	b _0808A8AA
	.align 2, 0
_0808A87C: .4byte 0xFFFFFF00
_0808A880:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, _0808A888
	b _0808A8AA
	.align 2, 0
_0808A888: .4byte 0xFFFFFF00
_0808A88C:
	movs r0, #0x80
	lsls r0, r0, #1
	b _0808A8A8
_0808A892:
	movs r0, #0xb6
	b _0808A8D0
_0808A896:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	b _0808A8AA
_0808A89E:
	movs r0, #0xb6
	rsbs r0, r0, #0
	movs r1, #0xb6
	b _0808A8AA
_0808A8A6:
	ldr r0, _0808A8B0
_0808A8A8:
	movs r1, #0
_0808A8AA:
	strh r0, [r4]
	strh r1, [r4, #2]
	b _0808A8D4
	.align 2, 0
_0808A8B0: .4byte 0xFFFFFF00
_0808A8B4:
	movs r0, #0xb6
	rsbs r0, r0, #0
	b _0808A8D0
_0808A8BA:
	movs r0, #0
	movs r1, #7
	bl randS32_
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0808A838
	b _0808A8D4
_0808A8CE:
	movs r0, #0
_0808A8D0:
	strh r0, [r4]
	strh r0, [r4, #2]
_0808A8D4:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
