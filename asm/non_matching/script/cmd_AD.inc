	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #3
	bl scriptstack_peek
	ldr r4, _080217FC
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl scriptstack_peek
	ldr r2, _08021800
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r2, _08021804
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r1, _08021808
	adds r4, r4, r1
	strh r0, [r4]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080217FC: .4byte gSave
_08021800: .4byte 0x0000070A
_08021804: .4byte 0x0000070C
_08021808: .4byte 0x0000070E
	.syntax divided
