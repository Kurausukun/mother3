	.syntax unified
sub_080BAEE0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	bl sub_08082670
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080BAEFC
	b _080BB0EC
_080BAEFC:
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r4, #0x1c]
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp]
	ldr r1, [r4, #0x1c]
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #8]
	ldr r1, [r4, #0x1c]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	str r0, [sp, #0xc]
	ldr r5, [r4, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r1, #0
	ldrsh r6, [r5, r1]
	adds r6, r4, r6
	ldr r1, [r7, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #1
	mov r8, r2
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r1, sl
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	ldr r5, [r4, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r1, #0
	ldrsh r6, [r5, r1]
	adds r6, r4, r6
	ldr r1, [r7, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #1
	mov sb, r2
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp]
	adds r1, r0, r1
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	ldr r5, [r4, #0x1c]
	add r5, r8
	movs r1, #0
	ldrsh r6, [r5, r1]
	adds r6, r4, r6
	ldr r1, [r7, #0x1c]
	movs r2, #0xac
	lsls r2, r2, #1
	mov r8, r2
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #4]
	adds r1, r0, r1
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	ldr r5, [r4, #0x1c]
	add r5, sb
	movs r1, #0
	ldrsh r6, [r5, r1]
	adds r6, r4, r6
	ldr r1, [r7, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #8]
	adds r1, r0, r1
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	ldr r5, [r4, #0x1c]
	add r5, r8
	movs r1, #0
	ldrsh r6, [r5, r1]
	adds r6, r4, r6
	ldr r1, [r7, #0x1c]
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	adds r1, r0, r1
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r0, r1
	str r0, [r7, #0x48]
	ldr r1, [r4, #0x1c]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp]
	subs r0, r0, r1
	str r0, [r7, #0x4c]
	ldr r1, [r4, #0x1c]
	movs r2, #0xec
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #4]
	subs r0, r0, r1
	str r0, [r7, #0x50]
	ldr r1, [r4, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [sp, #8]
	subs r0, r0, r1
	str r0, [r7, #0x54]
	ldr r0, [r4, #0x1c]
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	str r0, [r7, #0x58]
	movs r0, #1
	b _080BB0EE
_080BB0EC:
	movs r0, #0
_080BB0EE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
