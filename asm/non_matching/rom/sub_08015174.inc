	.syntax unified
sub_08015174:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _08015240
	ldr r0, _08015244
	adds r2, r7, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r7, #0x22]
	movs r2, #0
	movs r0, #0x3f
	strh r0, [r7, #0x22]
	ldrh r0, [r7, #0x24]
	movs r0, #1
	strh r0, [r7, #0x24]
	ldrh r0, [r7, #0x26]
	movs r0, #0xf0
	strh r0, [r7, #0x26]
	ldrh r0, [r7, #0x2a]
	movs r0, #0xa0
	strh r0, [r7, #0x2a]
	ldr r6, _08015248
	ldr r0, _0801524C
	adds r1, r6, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _08015250
	adds r0, r6, r1
	strh r2, [r0]
	adds r1, #2
	adds r0, r6, r1
	strh r2, [r0]
	ldr r2, _08015254
	adds r0, r6, r2
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080151F6
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	ldr r1, _08015258
	adds r0, r6, r1
	ldrb r0, [r0]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036C00
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _0801525C
	adds r0, r6, r2
	strh r1, [r0]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x10
	adds r2, #2
	adds r1, r6, r2
	strh r0, [r1]
_080151F6:
	bl sub_08016D08
	ldr r0, _08015260
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r1, r4, #0
	movs r2, #0xf0
	bl sub_08001B54
	ldr r1, _08015264
	adds r0, r7, r1
	adds r1, r4, #0
	bl memclear
	ldr r1, _08015268
	ldrh r0, [r7, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r7, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r7, #0x26]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r7, #0x2a]
	strh r0, [r1]
	movs r0, #0
	bl sub_08005900
	movs r0, #1
	bl sub_08005BB4
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015240: .4byte gSomeBlend
_08015244: .4byte 0x0001ED10
_08015248: .4byte gGame
_0801524C: .4byte 0x00005968
_08015250: .4byte 0x0000596A
_08015254: .4byte 0x0000598C
_08015258: .4byte 0x0000595D
_0801525C: .4byte 0x00005964
_08015260: .4byte gUnknown_030040F0
_08015264: .4byte 0x00013210
_08015268: .4byte 0x04000048
	.syntax divided
