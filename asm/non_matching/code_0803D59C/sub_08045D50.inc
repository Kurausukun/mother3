	.syntax unified
sub_08045D50:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	ldr r4, _08045DF4
	ldr r0, _08045DF8
	adds r4, r4, r0
	ldrh r0, [r4]
	bl sub_080486A0
	ldrh r1, [r4]
	movs r3, #0x14
	cmp r1, #0x1f
	bgt _08045D74
	cmp r1, #0x1c
	blt _08045D74
	movs r3, #0xc
_08045D74:
	ldr r4, _08045DF4
	ldr r1, _08045DFC
	adds r1, r1, r4
	mov r8, r1
	ldrh r1, [r1]
	adds r1, #0xc
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08045E00
	adds r4, r4, r2
	ldrh r2, [r4]
	adds r2, r3, r2
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
	adds r1, #0x3c
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4]
	adds r2, #0x2e
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
	adds r1, #0x70
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4]
	adds r2, #0x2e
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
_08045DF4: .4byte gSomeBlend
_08045DF8: .4byte 0x000041CC
_08045DFC: .4byte 0x00004234
_08045E00: .4byte 0x00004236
	.syntax divided
