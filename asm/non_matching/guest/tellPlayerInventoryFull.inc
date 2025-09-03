	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	bl getPartyCount
	cmp r0, #1
	bgt _080613A0
	movs r0, #0
	bl GetPlayer
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldrh r1, [r4, #0x24]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl getName__5GoodsUs
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x8c
	add r2, sp, #4
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	b _080613F6
_080613A0:
	movs r0, #0
	bl GetPlayer
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldrh r1, [r4, #0x24]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl getName__5GoodsUs
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x8d
	add r2, sp, #4
	adds r3, r5, #0
	bl ROMStrFmt__FiRC3MsgN21
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
_080613F6:
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
