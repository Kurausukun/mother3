	.syntax unified
set_event_flag:
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _080028F0
	lsrs r4, r0, #0x13
	movs r3, #0x90
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r4, r4, r2
	movs r3, #0xe0
	lsls r3, r3, #0xb
	ands r3, r0
	lsrs r3, r3, #0x10
	movs r5, #1
	adds r0, r5, #0
	lsls r0, r3
	ldrb r2, [r4]
	bics r2, r0
	ands r1, r5
	lsls r1, r3
	orrs r2, r1
	strb r2, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080028F0: .4byte gSave
	.syntax divided
