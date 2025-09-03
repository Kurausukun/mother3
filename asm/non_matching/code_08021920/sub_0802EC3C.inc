	.syntax unified
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #1
	beq _0802EC78
	cmp r0, #1
	bgt _0802EC54
	cmp r0, #0
	beq _0802EC5A
	b _0802ECBA
_0802EC54:
	cmp r0, #2
	beq _0802EC9E
	b _0802ECBA
_0802EC5A:
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r4, r2, #0
	adds r4, #0x85
	cmp r0, #1
	beq _0802EC6E
	ldrb r0, [r4]
	movs r1, #3
	bl sub_08033620
_0802EC6E:
	ldrb r0, [r4]
	movs r1, #5
	bl sub_08033620
	b _0802ECBA
_0802EC78:
	adds r4, r2, #0
	adds r4, #0x85
	ldrb r0, [r4]
	movs r1, #0
	bl sub_08033620
	ldrb r0, [r4]
	movs r1, #4
	bl sub_08033620
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #1
	beq _0802ECBA
	ldrb r0, [r4]
	movs r1, #2
	bl sub_08033620
	b _0802ECBA
_0802EC9E:
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r4, r2, #0
	adds r4, #0x85
	cmp r0, #1
	beq _0802ECB2
	ldrb r0, [r4]
	movs r1, #3
	bl sub_08033620
_0802ECB2:
	ldrb r0, [r4]
	movs r1, #0xe
	bl sub_08033620
_0802ECBA:
	ldr r1, _0802ECC8
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802ECC8: .4byte gObjectContinue
	.syntax divided
