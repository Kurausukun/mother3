	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _08050EE0
	ldr r2, _08050EE4
	adds r1, r0, r2
	ldr r2, _08050EE8
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r2, r1, r0
	subs r2, #8
	movs r3, #0
	cmp r3, r4
	bhs _08050EDA
	movs r1, #3
	adds r0, r5, #0
	ands r0, r1
	lsls r5, r0, #2
	movs r6, #0xd
	rsbs r6, r6, #0
_08050EC4:
	ldrb r0, [r2, #5]
	adds r1, r6, #0
	ands r1, r0
	orrs r1, r5
	strb r1, [r2, #5]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	subs r2, #8
	cmp r3, r4
	blo _08050EC4
_08050EDA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050EE0: .4byte gSomeBlend
_08050EE4: .4byte 0x0000C620
_08050EE8: .4byte 0x00002C98
	.syntax divided
