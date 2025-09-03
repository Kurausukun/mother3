	.syntax unified
sub_0801230C:
	push {r4, r5, lr}
	ldr r4, _08012314
	movs r5, #0
	b _08012344
	.align 2, 0
_08012314: .4byte gUnknown_0200BB40
_08012318:
	ldr r1, [r4]
	lsls r0, r1, #8
	lsrs r0, r0, #0x1b
	lsls r1, r1, #4
	lsrs r1, r1, #0x1c
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r3, #0
	bl sub_08012830
	ldrb r0, [r4, #2]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r4, #2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #4
	cmp r5, #0x27
	bhi _0801234E
_08012344:
	ldrb r1, [r4, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08012318
_0801234E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
