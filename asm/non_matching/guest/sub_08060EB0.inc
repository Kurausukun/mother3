	.syntax unified
sub_08060EB0:
	push {lr}
	ldr r2, [r0, #4]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x14]
	bl _call_via_r1
	movs r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bhi _08060ECC
	movs r1, #1
_08060ECC:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
