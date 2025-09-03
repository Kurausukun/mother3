	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	ldr r0, _080523AC
	adds r1, r1, r0
	lsrs r0, r1, #0x10
	ldr r1, _080523B0
	cmp r0, r1
	beq _0805239C
	ldr r7, _080523B4
	mov r8, r1
_0805237E:
	subs r6, r0, #1
	adds r5, r4, #1
_08052382:
	ldr r1, [r7]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08052382
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r8
	bne _0805237E
_0805239C:
	movs r0, #1
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080523AC: .4byte 0xFFFF0000
_080523B0: .4byte 0x0000FFFF
_080523B4: .4byte gUnknown_02015E2C
	.syntax divided
