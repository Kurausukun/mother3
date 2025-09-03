	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _0802E030
	ldr r4, _0802E034
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0802E040
	movs r5, #2
	ldrsh r4, [r1, r5]
	lsls r4, r4, #0x14
	lsrs r4, r4, #0x10
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ldr r5, _0802E038
	adds r1, r2, r5
	movs r5, #0
	ldrsh r1, [r1, r5]
	subs r0, r0, r1
	ldrh r1, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldr r3, _0802E03C
	adds r2, r2, r3
	movs r5, #0
	ldrsh r2, [r2, r5]
	subs r1, r1, r2
	bl sub_0803329C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bhs _0802E040
	movs r0, #1
	b _0802E042
	.align 2, 0
_0802E030: .4byte gGame
_0802E034: .4byte 0x00008495
_0802E038: .4byte 0x000083C0
_0802E03C: .4byte 0x000083C2
_0802E040:
	movs r0, #0
_0802E042:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
