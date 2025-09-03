	.syntax unified
sub_08082088:
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xd8
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5, #0x48]
	ldrh r1, [r1, #2]
	cmp r0, r1
	blt _080820C6
	adds r0, r5, #0
	bl fire__6Action
	b _0808212A
_080820C6:
	ldr r2, [r5, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r1, _08082134
	mov r0, sp
	bl sub_0806E34C
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08082138
	add r4, sp, #0xc
	adds r0, r4, #0
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	mov r0, sp
	adds r1, r4, #0
	bl sub_0806E374__3MsgRC3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	add r1, sp, #0x18
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
	movs r0, #0
_0808212A:
	add sp, #0x1c
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08082134: .4byte 0x0000FF02
_08082138: .4byte 0x000003FF
	.syntax divided
