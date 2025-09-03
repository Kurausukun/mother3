	.syntax unified
	push {lr}
	sub sp, #8
	adds r3, r0, #0
	adds r2, r1, #0
	movs r0, #0x1f
	ands r0, r2
	cmp r0, #0
	bne _08001AE4
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08001AFE
_08001AE4:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	adds r1, r3, #0
	bl CpuSet
	b _08001B12
_08001AFE:
	str r0, [sp, #4]
	add r0, sp, #4
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r2, r1
	adds r1, r3, #0
	bl sub_08090F74
_08001B12:
	add sp, #8
	pop {r0}
	bx r0
	.syntax divided
