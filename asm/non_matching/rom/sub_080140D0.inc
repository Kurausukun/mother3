	.syntax unified
sub_080140D0:
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _08014194
	ldr r0, _08014198
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
	strh r1, [r6, #0x26]
	ldrh r0, [r6, #0x2a]
	movs r0, #0xa0
	strh r0, [r6, #0x2a]
	ldr r7, _0801419C
	ldr r2, _080141A0
	adds r0, r7, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	ldr r1, _080141A4
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801414C
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	ldr r2, _080141A8
	adds r0, r7, r2
	ldrb r0, [r0]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036C00
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _080141AC
	adds r0, r7, r2
	strh r1, [r0]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x10
	adds r2, #2
	adds r1, r7, r2
	strh r0, [r1]
_0801414C:
	bl sub_08016CBC
	ldr r0, _080141B0
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r1, r4, #0
	bl memclear
	ldr r1, _080141B4
	adds r0, r6, r1
	adds r1, r4, #0
	bl memclear
	ldr r1, _080141B8
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
	ldr r2, _080141BC
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #3
	bne _080141C0
	ldrb r0, [r7, #2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r7, #2]
	b _080141C6
	.align 2, 0
_08014194: .4byte gSomeBlend
_08014198: .4byte 0x0001ED10
_0801419C: .4byte gGame
_080141A0: .4byte 0x00005968
_080141A4: .4byte 0x0000598C
_080141A8: .4byte 0x0000595D
_080141AC: .4byte 0x00005964
_080141B0: .4byte gUnknown_030040F0
_080141B4: .4byte 0x00013210
_080141B8: .4byte 0x04000048
_080141BC: .4byte 0x0000595B
_080141C0:
	movs r0, #0
	bl sub_08005900
_080141C6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
