	.syntax unified
	push {lr}
	sub sp, #4
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r2]
	cmp r0, #1
	bne _0804E12E
	adds r0, r3, #0
	bl sub_0804F6C8
	b _0804E15C
_0804E12E:
	adds r1, r3, #4
	ldrh r0, [r3, #2]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #0
	bl sub_08053598
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0804E15C
	bl sub_08046D90
	ldr r0, _0804E164
	ldr r1, _0804E168
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
_0804E15C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0804E164: .4byte gSomeBlend
_0804E168: .4byte 0x0000C5AD
	.syntax divided
