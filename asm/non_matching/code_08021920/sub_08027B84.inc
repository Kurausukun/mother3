	.syntax unified
sub_08027B84:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	adds r6, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r5, r3, #0
	cmp r0, #9
	bhi _08027BC6
	cmp r3, #1
	bhi _08027BAA
	bl sub_08003C88
	b _08027BC6
_08027BAA:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08027BCC
	adds r0, r0, r1
	ldrb r1, [r0, #8]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #8]
	movs r1, #0
	strh r7, [r0, #4]
	strh r6, [r0, #6]
	strh r1, [r0, #2]
	strh r5, [r0]
_08027BC6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027BCC: .4byte gUnknown_0201B6A4
	.syntax divided
