	.syntax unified
sub_0809D7D4:
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x58]
	cmp r0, #4
	bhi _0809D832
	lsls r0, r0, #2
	ldr r1, _0809D7E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809D7E8: .4byte _0809D7EC
_0809D7EC:
	.4byte _0809D832
	.4byte _0809D832
	.4byte _0809D800
	.4byte _0809D81A
	.4byte _0809D832
_0809D800:
	ldr r1, [r2, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
	b _0809D832
_0809D81A:
	ldr r1, [r2, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #4]
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
_0809D832:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
