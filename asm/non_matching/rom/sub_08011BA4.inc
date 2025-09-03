	.syntax unified
sub_08011BA4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x24]
	mov sb, r0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov r2, sb
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _08011C1C
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r4, r4, r1
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08001378
	adds r5, r0, #0
	mov r0, sl
	adds r1, r4, #0
	mov r2, r8
	mov r3, sb
	bl sub_08001378
	adds r3, r0, #0
	ldr r0, _08011C20
	ldrh r1, [r0, #2]
	ldr r0, _08011C24
	ands r0, r1
	cmp r0, #0
	beq _08011C2C
	ldr r2, _08011C28
	b _08011C2E
	.align 2, 0
_08011C1C: .4byte gUnknown_02016078
_08011C20: .4byte gGame
_08011C24: .4byte 0x00004008
_08011C28: .4byte 0x040000D4
_08011C2C:
	ldr r2, _08011C54
_08011C2E:
	str r5, [r2]
	str r3, [r2, #4]
	lsls r0, r7, #1
	ldr r1, [sp]
	muls r0, r1, r0
	lsrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011C54: .4byte 0x040000B0
	.syntax divided
