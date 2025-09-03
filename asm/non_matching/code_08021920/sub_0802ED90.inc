	.syntax unified
sub_0802ED90:
	push {lr}
	adds r2, r0, #0
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0802EDA4
	adds r1, r2, #0
	adds r1, #0x75
	movs r0, #0xff
	b _0802EDAA
_0802EDA4:
	adds r1, r2, #0
	adds r1, #0x75
	movs r0, #3
_0802EDAA:
	strb r0, [r1]
	ldr r1, _0802EDB8
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802EDB8: .4byte gObjectContinue
	.syntax divided
