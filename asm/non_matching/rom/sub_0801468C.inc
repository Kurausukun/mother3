	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _08014754
	ldr r0, _08014758
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrh r0, [r6, #0x22]
	movs r1, #0
	movs r0, #0x3f
	strh r0, [r6, #0x22]
	ldrh r0, [r6, #0x24]
	strh r1, [r6, #0x24]
	ldrh r0, [r6, #0x26]
	movs r2, #0xf0
	strh r2, [r6, #0x26]
	ldrh r0, [r6, #0x2a]
	movs r0, #0xa0
	strh r0, [r6, #0x2a]
	ldr r7, _0801475C
	ldr r3, _08014760
	adds r0, r7, r3
	strh r2, [r0]
	ldr r2, _08014764
	adds r0, r7, r2
	strh r1, [r0]
	adds r3, #4
	adds r0, r7, r3
	strh r1, [r0]
	ldr r1, _08014768
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801470A
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	ldr r2, _0801476C
	adds r0, r7, r2
	ldrb r0, [r0]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036C00
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r3, _08014770
	adds r0, r7, r3
	strh r1, [r0]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x10
	ldr r2, _08014774
	adds r1, r7, r2
	strh r0, [r1]
_0801470A:
	bl sub_08016D08
	ldr r0, _08014778
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r1, r4, #0
	movs r2, #0xf0
	bl sub_08001B54
	ldr r3, _0801477C
	adds r0, r6, r3
	adds r1, r4, #0
	bl memclear
	ldr r1, _08014780
	ldrh r0, [r6, #0x22]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r6, #0x24]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r6, #0x26]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r6, #0x2a]
	strh r0, [r1]
	ldr r1, _08014784
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08014788
	ldrb r0, [r7, #2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r7, #2]
	b _0801478E
	.align 2, 0
_08014754: .4byte gSomeBlend
_08014758: .4byte 0x0001ED10
_0801475C: .4byte gGame
_08014760: .4byte 0x00005968
_08014764: .4byte 0x0000596A
_08014768: .4byte 0x0000598C
_0801476C: .4byte 0x0000595D
_08014770: .4byte 0x00005964
_08014774: .4byte 0x00005966
_08014778: .4byte gUnknown_030040F0
_0801477C: .4byte 0x00013210
_08014780: .4byte 0x04000048
_08014784: .4byte 0x0000595B
_08014788:
	movs r0, #0
	bl sub_08005900
_0801478E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
