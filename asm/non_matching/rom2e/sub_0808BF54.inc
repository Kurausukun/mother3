	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_0808C578
_0808BF60:
	ldr r0, [r4, #0x58]
	subs r0, #1
	cmp r0, #5
	bhi _0808BF60
	lsls r0, r0, #2
	ldr r1, _0808BF74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808BF74: .4byte _0808BF78
_0808BF78:
	.4byte _0808BF90
	.4byte _0808BF96
	.4byte _0808BFA0
	.4byte _0808BFB2
	.4byte _0808BFB6
	.4byte _0808BFD4
_0808BF90:
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	b _0808BFA4
_0808BF96:
	ldr r1, [r4, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r0, [r1, r3]
	b _0808BFA8
_0808BFA0:
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
_0808BFA4:
	movs r2, #0
	ldrsh r0, [r1, r2]
_0808BFA8:
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0808BF60
_0808BFB2:
	movs r0, #0
	b _0808BFF0
_0808BFB6:
	ldr r2, [r4, #0x50]
	cmp r2, #0
	beq _0808BFCC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808BFCC:
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #1
	b _0808BFF0
_0808BFD4:
	ldr r2, [r4, #0x50]
	cmp r2, #0
	beq _0808BFEA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808BFEA:
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #2
_0808BFF0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
