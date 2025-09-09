	.syntax unified
sub_080BB8DC:
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	bl nullsub_40
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	bne _080BB980
	ldr r1, [r4, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4, #0x34]
	cmp r0, r1
	blt _080BB980
	ldr r2, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC5Colorb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0x4b
	adds r1, r5, #0
	adds r2, r5, #0
	bl PlayAnimation
	movs r0, #0x82
	movs r1, #0x96
	bl randS32
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #1
	bl hitPlayer
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl tellStatusWoreOff
_080BB980:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
