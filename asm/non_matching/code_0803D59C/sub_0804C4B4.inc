	.syntax unified
sub_0804C4B4:
	push {r4, lr}
	ldr r1, _0804C4F4
	ldr r0, _0804C4F8
	adds r2, r1, r0
	movs r3, #0
	movs r0, #0x12
	strb r0, [r2]
	movs r0, #0xc1
	lsls r0, r0, #6
	adds r1, r1, r0
	strh r3, [r1, #4]
	strh r3, [r1, #0xa]
	movs r0, #0
	bl sub_08054FE0
	adds r4, r0, #0
	bl sub_080552E4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r1, [r4]
	ldr r0, _0804C4FC
	cmp r1, r0
	bne _0804C500
	subs r0, #0x37
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_0803F424
	b _0804C512
	.align 2, 0
_0804C4F4: .4byte gSomeBlend
_0804C4F8: .4byte 0x00004260
_0804C4FC: .4byte 0x00000302
_0804C500:
	ldr r1, _0804C518
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_0803F424
_0804C512:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C518: .4byte gUnknown_080C6AF6
	.syntax divided
