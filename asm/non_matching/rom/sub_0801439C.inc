	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _08014440
	ldr r0, _08014444
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r7, #0x22]
	movs r1, #0
	movs r0, #0x3f
	strh r0, [r7, #0x22]
	ldrh r0, [r7, #0x24]
	movs r0, #1
	strh r0, [r7, #0x24]
	ldrh r0, [r7, #0x2a]
	movs r0, #0xa0
	strh r0, [r7, #0x2a]
	ldr r6, _08014448
	ldr r2, _0801444C
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	ldr r1, _08014450
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08014416
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	ldr r2, _08014454
	adds r0, r6, r2
	ldrb r0, [r0]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036C00
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _08014458
	adds r0, r6, r2
	strh r1, [r0]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x10
	adds r2, #2
	adds r1, r6, r2
	strh r0, [r1]
_08014416:
	bl sub_08016CBC
	ldr r0, _0801445C
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r1, r4, #0
	bl memclear
	ldr r1, _08014460
	adds r0, r7, r1
	adds r1, r4, #0
	bl memclear
	movs r0, #0
	bl sub_08005900
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014440: .4byte gSomeBlend
_08014444: .4byte 0x0001ED10
_08014448: .4byte gGame
_0801444C: .4byte 0x00005968
_08014450: .4byte 0x0000598C
_08014454: .4byte 0x0000595D
_08014458: .4byte 0x00005964
_0801445C: .4byte gUnknown_030040F0
_08014460: .4byte 0x00013210
	.syntax divided
