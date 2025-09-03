	.syntax unified
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
	movs r3, #0xa8
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807F724
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
	movs r1, #0x79
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
	beq _0807F720
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F720:
	adds r0, r4, #0
	b _0807F7CA
_0807F724:
	ldr r0, _0807F794
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
	bl __9DebugMenu
	str r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _0807F798
	cmp r0, #1
	bgt _0807F7B2
	cmp r0, #0
	bne _0807F7B2
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [r5, #0x38]
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F790
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F790:
	movs r0, #0
	b _0807F7CA
	.align 2, 0
_0807F794: .4byte 0x00000874
_0807F798:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F7AE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F7AE:
	movs r0, #1
	b _0807F7CA
_0807F7B2:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _0807F7C8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807F7C8:
	movs r0, #2
_0807F7CA:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
