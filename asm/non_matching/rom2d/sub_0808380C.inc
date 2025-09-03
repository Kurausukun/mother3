	.syntax unified
sub_0808380C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r0, [r0, #0x1c]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r5, r0, r3
	movs r1, #0
	ldrsh r4, [r5, r1]
	add r4, sl
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r2, #0x2c
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r3, sl
	ldr r0, [r3, #0x1c]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	add r4, sl
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r3, #0x2e
	ldrsh r0, [r7, r3]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r1, sl
	ldr r0, [r1, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r5, r0, r2
	movs r3, #0
	ldrsh r4, [r5, r3]
	add r4, sl
	adds r2, #0x90
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r2, #0x30
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r3, sl
	ldr r0, [r3, #0x1c]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	add r4, sl
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r3, #0x32
	ldrsh r0, [r7, r3]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r1, sl
	ldr r0, [r1, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r5, r0, r2
	movs r3, #0
	ldrsh r4, [r5, r3]
	add r4, sl
	adds r2, #0x90
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r2, #0x34
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r3, sl
	ldr r0, [r3, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	add r4, sl
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r3, #0x36
	ldrsh r0, [r7, r3]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r1, sl
	ldr r0, [r1, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r5, r0, r2
	movs r3, #0
	ldrsh r4, [r5, r3]
	add r4, sl
	adds r2, #0x90
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sl
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r2, #0x38
	ldrsh r0, [r7, r2]
	subs r1, r1, r0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	movs r3, #0
	str r3, [sp]
	b _080839FA
_08083988:
	mov r0, sl
	ldr r6, [r0, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r6, r6, r1
	movs r3, #0
	ldrsh r2, [r6, r3]
	mov r8, r2
	add r8, sl
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	ldr r1, [sp]
	bl _call_via_r2
	mov sb, r0
	mov r3, sl
	ldr r4, [r3, #0x1c]
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sl
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	ldr r1, [sp]
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r2, r0, #0
	ldr r3, [sp]
	lsls r1, r3, #1
	ldr r0, [r7, #0x44]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	ldr r3, [r6, #4]
	mov r0, r8
	mov r1, sb
	bl _call_via_r3
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
_080839FA:
	ldr r1, [r7, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp]
	cmp r1, r0
	blt _08083988
	movs r2, #0
	str r2, [sp, #4]
	adds r3, r7, #0
	adds r3, #0x3c
	str r3, [sp, #8]
	adds r0, r7, #0
	adds r0, #0x48
	str r0, [sp, #0xc]
	b _08083AA4
_08083A22:
	mov r1, sl
	ldr r1, [r1, #0x1c]
	mov r8, r1
	movs r2, #0xb4
	lsls r2, r2, #1
	add r8, r2
	mov r3, r8
	movs r0, #0
	ldrsh r3, [r3, r0]
	mov sb, r3
	add sb, sl
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	ldr r1, [sp, #4]
	bl _call_via_r2
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r3, sl
	ldr r4, [r3, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sl
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	ldr r1, [sp, #4]
	bl _call_via_r2
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r2, r0, #0
	ldr r3, [sp, #4]
	lsls r1, r3, #1
	ldr r3, [sp, #0xc]
	ldr r0, [r3, #8]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	mov r0, r8
	ldr r3, [r0, #4]
	mov r0, sb
	adds r1, r6, #0
	bl _call_via_r3
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
_08083AA4:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [sp, #4]
	cmp r3, r0
	blt _08083A22
	movs r0, #0
	strh r0, [r7, #0x2c]
	strh r0, [r7, #0x2e]
	strh r0, [r7, #0x30]
	strh r0, [r7, #0x32]
	strh r0, [r7, #0x34]
	strh r0, [r7, #0x36]
	strh r0, [r7, #0x38]
	ldr r1, [sp, #8]
	str r0, [r1, #4]
	ldr r2, [sp, #0xc]
	str r0, [r2, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
