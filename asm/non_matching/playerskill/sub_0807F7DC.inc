	.syntax unified
sub_0807F7DC:
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x83
	lsls r3, r3, #3
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807F8B2
	movs r0, #0x8e
	lsls r0, r0, #1
	bl __builtin_new
	mov sl, r0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	add r3, sp, #0x14
	mov r8, r3
	mov r0, r8
	bl __3Msg
	add r6, sp, #0x20
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x2c
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #8
	adds r0, r4, #0
	movs r1, #0x7a
	mov r2, r8
	adds r3, r6, #0
	bl ROMStrFmt__FiRC3MsgN21
	mov r0, sl
	mov r1, sb
	adds r2, r4, #0
	bl sub_0808DFD4
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F8AE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F8AE:
	adds r0, r4, #0
	b _0807F954
_0807F8B2:
	movs r0, #0xd7
	lsls r0, r0, #3
	bl __builtin_new
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl GoodsMenu_ct
	str r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #1
	bl _call_via_r2
	cmp r0, #1
	beq _0807F922
	cmp r0, #1
	bgt _0807F93C
	cmp r0, #0
	bne _0807F93C
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r5, #0x38]
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F91E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F91E:
	movs r0, #0
	b _0807F954
_0807F922:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F938
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F938:
	movs r0, #1
	b _0807F954
_0807F93C:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F952
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F952:
	movs r0, #2
_0807F954:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
