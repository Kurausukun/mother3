	.syntax unified
	push {lr}
	sub sp, #8
	adds r3, r0, #0
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08001B6A
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08001B82
_08001B6A:
	mov r0, sp
	strh r2, [r0]
	lsls r2, r1, #0xa
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	adds r1, r3, #0
	bl CpuSet
	b _08001B96
_08001B82:
	str r2, [sp, #4]
	add r0, sp, #4
	lsls r2, r1, #9
	lsrs r2, r2, #0xb
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r2, r1
	adds r1, r3, #0
	bl sub_08090F74
_08001B96:
	add sp, #8
	pop {r0}
	bx r0
	.syntax divided
