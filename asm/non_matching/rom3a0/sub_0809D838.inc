	.syntax unified
sub_0809D838:
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x58]
	cmp r0, #1
	bne _0809D85A
	ldr r1, [r2, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #4]
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
_0809D85A:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
