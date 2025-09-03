	.syntax unified
sub_0801480C:
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, _080148A0
	ldr r0, _080148A4
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	bl sub_08002FE8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	bl sub_08002FD4
	ldr r2, _080148A8
	ldr r1, _080148AC
	adds r3, r2, r1
	movs r5, #0
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #2
	ldr r1, _080148B0
	adds r0, r0, r1
	ldrb r1, [r0, #3]
	ldr r4, _080148B4
	adds r0, r2, r4
	strb r1, [r0]
	ldr r1, _080148B8
	adds r0, r2, r1
	strb r5, [r0]
	ldr r4, _080148BC
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrb r1, [r0]
	ldr r3, _080148C0
	adds r0, r2, r3
	strb r1, [r0]
	ldr r4, _080148C4
	adds r2, r2, r4
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bl sub_08037958
	ldr r0, _080148C8
	ldr r1, _080148CC
	ldr r1, [r1]
	movs r2, #4
	str r2, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	movs r3, #0xa
	bl sub_080031F0
	ldr r0, _080148D0
	adds r6, r6, r0
	ldrb r0, [r6]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080148A0: .4byte gGame
_080148A4: .4byte 0x00009D14
_080148A8: .4byte gSomeBlend
_080148AC: .4byte 0x00011D9C
_080148B0: .4byte gUnknown_080C2A90
_080148B4: .4byte 0x00011D9D
_080148B8: .4byte 0x00011D9E
_080148BC: .4byte gUnknown_080C2A9C
_080148C0: .4byte 0x00011D9F
_080148C4: .4byte 0x000121BB
_080148C8: .4byte gUnknown_02000008
_080148CC: .4byte gUnknown_02000028
_080148D0: .4byte 0x000067C4
	.syntax divided
