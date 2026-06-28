	.syntax unified
sub_08002E8C:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	adds r4, r3, #0
	ldr r5, [sp, #0x18]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r2, r4, #0
	adds r3, r5, #0
	bl lerp2
	mov r1, sb
	strh r0, [r1]
	movs r2, #2
	ldrsh r0, [r6, r2]
	mov r3, r8
	movs r2, #2
	ldrsh r1, [r3, r2]
	adds r2, r4, #0
	adds r3, r5, #0
	bl lerp2
	mov r3, sb
	strh r0, [r3, #2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
