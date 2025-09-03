	.syntax unified
sub_08014244:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r4, _080142D0
	ldr r0, _080142D4
	adds r1, r4, r0
	ldrb r0, [r1]
	movs r2, #0x40
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	ldrh r0, [r4, #0x22]
	movs r1, #0
	movs r0, #0x21
	strh r0, [r4, #0x22]
	ldrh r0, [r4, #0x24]
	movs r0, #0x3f
	strh r0, [r4, #0x24]
	ldrh r0, [r4, #0x26]
	movs r0, #0xf0
	strh r0, [r4, #0x26]
	ldrh r0, [r4, #0x2a]
	movs r0, #0xa0
	strh r0, [r4, #0x2a]
	ldr r5, _080142D8
	ldr r2, _080142DC
	adds r0, r5, r2
	strh r1, [r0]
	bl sub_08016CBC
	ldr r0, _080142E0
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r1, r6, #0
	movs r2, #0xf0
	bl sub_08001B54
	ldr r1, _080142E4
	adds r0, r4, r1
	adds r1, r6, #0
	bl memclear
	ldr r1, _080142E8
	ldrh r0, [r4, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r4, #0x26]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r4, #0x2a]
	strh r0, [r1]
	ldrb r0, [r5, #2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5, #2]
	ldr r2, _080142EC
	adds r5, r5, r2
	ldrb r0, [r5]
	mov r1, r8
	orrs r0, r1
	strb r0, [r5]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080142D0: .4byte gSomeBlend
_080142D4: .4byte 0x0001ED10
_080142D8: .4byte gGame
_080142DC: .4byte 0x00005968
_080142E0: .4byte gUnknown_030040F0
_080142E4: .4byte 0x00013210
_080142E8: .4byte 0x04000048
_080142EC: .4byte 0x000067C4
	.syntax divided
