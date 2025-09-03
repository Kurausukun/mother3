	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	mov r2, sb
	lsls r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	add sb, r0
	mov r1, sb
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r2, _08011B60
	mov sl, r2
	add r4, sl
	ldr r0, [sp]
	adds r4, r0, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r5, sl
	adds r5, r7, r5
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08011B64
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08001378
	adds r4, r0, #0
	add r6, sl
	ldr r1, [sp]
	adds r6, r1, r6
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	add r8, sl
	add r8, r7
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _08011B64
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_08001378
	adds r3, r0, #0
	ldr r0, _08011B68
	ldrh r1, [r0, #2]
	ldr r0, _08011B6C
	ands r0, r1
	cmp r0, #0
	beq _08011B74
	ldr r2, _08011B70
	b _08011B76
	.align 2, 0
_08011B60: .4byte 0x0000FFFF
_08011B64: .4byte gUnknown_02016078
_08011B68: .4byte gGame
_08011B6C: .4byte 0x00004008
_08011B70: .4byte 0x040000D4
_08011B74:
	ldr r2, _08011B9C
_08011B76:
	str r4, [r2]
	str r3, [r2, #4]
	lsls r0, r7, #1
	ldr r1, [sp]
	muls r0, r1, r0
	lsrs r0, r0, #2
	ldr r1, _08011BA0
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
_08011B9C: .4byte 0x040000B0
_08011BA0: .4byte 0x84A00000
	.syntax divided
