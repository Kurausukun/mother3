	.syntax unified
sub_080B8BD8:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	cmp r1, #0
	bge _080B8C00
	rsbs r1, r1, #0
_080B8C00:
	add r0, sp, #4
	bl sub_0806E1C8
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
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
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
