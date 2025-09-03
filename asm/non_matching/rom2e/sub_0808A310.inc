	.syntax unified
sub_0808A310:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #8
	bhi _0808A3A6
	lsls r0, r2, #2
	ldr r1, _0808A324
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808A324: .4byte _0808A328
_0808A328:
	.4byte _0808A34C
	.4byte _0808A358
	.4byte _0808A364
	.4byte _0808A36A
	.4byte _0808A36E
	.4byte _0808A376
	.4byte _0808A37E
	.4byte _0808A38C
	.4byte _0808A392
_0808A34C:
	movs r0, #0
	ldr r1, _0808A354
	b _0808A382
	.align 2, 0
_0808A354: .4byte 0xFFFFFF00
_0808A358:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, _0808A360
	b _0808A382
	.align 2, 0
_0808A360: .4byte 0xFFFFFF00
_0808A364:
	movs r0, #0x80
	lsls r0, r0, #1
	b _0808A380
_0808A36A:
	movs r0, #0xb6
	b _0808A3A8
_0808A36E:
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	b _0808A382
_0808A376:
	movs r0, #0xb6
	rsbs r0, r0, #0
	movs r1, #0xb6
	b _0808A382
_0808A37E:
	ldr r0, _0808A388
_0808A380:
	movs r1, #0
_0808A382:
	strh r0, [r4]
	strh r1, [r4, #2]
	b _0808A3AC
	.align 2, 0
_0808A388: .4byte 0xFFFFFF00
_0808A38C:
	movs r0, #0xb6
	rsbs r0, r0, #0
	b _0808A3A8
_0808A392:
	movs r0, #0
	movs r1, #7
	bl randS32_
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0808A310
	b _0808A3AC
_0808A3A6:
	movs r0, #0
_0808A3A8:
	strh r0, [r4]
	strh r0, [r4, #2]
_0808A3AC:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
