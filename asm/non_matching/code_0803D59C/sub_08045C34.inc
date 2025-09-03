	.syntax unified
sub_08045C34:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	movs r0, #0x18
	bl sub_080486A0
	ldr r4, _08045CC4
	ldr r1, _08045CC8
	adds r1, r1, r4
	mov r8, r1
	ldrh r1, [r1]
	adds r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08045CCC
	adds r4, r4, r2
	ldrh r2, [r4]
	adds r2, #0xc
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #1
	rsbs r3, r3, #0
	mov sb, r3
	movs r6, #0xf
	str r6, [sp]
	movs r5, #0
	str r5, [sp, #4]
	bl sub_08047CDC
	movs r0, #3
	bl sub_080486A0
	mov r2, r8
	ldrh r1, [r2]
	adds r1, #0x34
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4]
	adds r2, #0x1e
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r6, [sp]
	str r5, [sp, #4]
	mov r3, sb
	bl sub_08047CDC
	movs r0, #4
	bl sub_080486A0
	mov r3, r8
	ldrh r1, [r3]
	adds r1, #0x68
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4]
	adds r2, #0x1e
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r6, [sp]
	str r5, [sp, #4]
	mov r3, sb
	bl sub_08047CDC
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08045CC4: .4byte gSomeBlend
_08045CC8: .4byte 0x00004234
_08045CCC: .4byte 0x00004236
	.syntax divided
