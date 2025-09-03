	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r5, _0804E018
	ldr r1, _0804E01C
	adds r0, r5, r1
	ldrh r2, [r0]
	cmp r2, #0
	bne _0804E070
	ldrh r0, [r6]
	cmp r0, #1
	bne _0804E054
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _0804E020
	movs r0, #0xf1
	lsls r0, r0, #2
	bl play_sound
	movs r0, #0xb4
	bl sub_0803DF94
	bl sub_0804C68C
	b _0804E070
	.align 2, 0
_0804E018: .4byte gSomeBlend
_0804E01C: .4byte 0x00004ECC
_0804E020:
	movs r0, #0xdd
	bl play_sound
	bl sub_0804C8C0
	ldr r2, _0804E04C
	adds r0, r5, r2
	ldr r0, [r0]
	movs r1, #9
	bl sub_08048748
	ldr r2, _0804E050
	adds r1, r5, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bne _0804E070
	movs r0, #0x67
	strh r0, [r4, #4]
	b _0804E070
	.align 2, 0
_0804E04C: .4byte 0x00004DF4
_0804E050: .4byte 0x00004ECA
_0804E054:
	adds r0, r4, #4
	ldrh r3, [r4, #2]
	subs r3, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x10
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	str r2, [sp, #8]
	adds r1, r6, #0
	movs r2, #0
	bl sub_080534C8
_0804E070:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
