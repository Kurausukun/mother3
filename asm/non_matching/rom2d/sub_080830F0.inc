	.syntax unified
sub_080830F0:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl __4Base
	ldr r0, _0808313C
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	str r1, [r4, #0x3c]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r0, #0xc
	str r1, [r4, #0x48]
	str r1, [r0, #4]
	str r1, [r0, #8]
	movs r0, #0x6c
	muls r0, r5, r0
	ldr r2, _08083140
	adds r0, r0, r2
	str r0, [r4, #0x24]
	str r6, [r4, #0x28]
	strh r1, [r4, #0x2c]
	strh r1, [r4, #0x2e]
	strh r1, [r4, #0x30]
	strh r1, [r4, #0x32]
	strh r1, [r4, #0x34]
	strh r1, [r4, #0x36]
	strh r1, [r4, #0x38]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808313C: .4byte vt_09F83C28
_08083140: .4byte gGoodsInfo
	.syntax divided
