	.syntax unified
sub_08001EA4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsrs r2, r2, #6
	ldr r0, _08001F4C
	adds r2, r2, r0
	movs r3, #0
	cmp r3, r6
	bhs _08001F46
_08001EBC:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r5]
	ldr r0, [r0]
	orrs r1, r0
	stm r5!, {r1}
	adds r4, #1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	blo _08001EBC
_08001F46:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001F4C: .4byte gUnknown_08CDF9F8
	.syntax divided
