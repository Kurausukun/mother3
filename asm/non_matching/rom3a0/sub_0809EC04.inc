	.syntax unified
sub_0809EC04:
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08074614
	cmp r0, #0
	beq _0809EC30
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bne _0809EC30
	movs r0, #0
	b _0809EC38
_0809EC30:
	ldr r0, _0809EC40
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
_0809EC38:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809EC40: .4byte gUnknown_080F6044
	.syntax divided
