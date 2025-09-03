	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x2c]
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802E5BA
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #4
	ldrsh r1, [r5, r2]
	bl sub_08002FD4
	ldr r2, [r4, #0x2c]
	ldrh r1, [r5, #2]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r1, [r4, #0x2c]
	movs r0, #1
	strh r0, [r1, #2]
_0802E5BA:
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r1]
	ldr r0, [r4, #0x2c]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bgt _0802E5EA
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	movs r2, #7
	ands r2, r1
	movs r1, #1
	bl sub_080332AC
	movs r0, #0
	b _0802E5EC
_0802E5EA:
	movs r0, #1
_0802E5EC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
