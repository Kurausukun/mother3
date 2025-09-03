	.syntax unified
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _080140B8
	movs r1, #0x80
	lsls r1, r1, #3
	movs r2, #1
	rsbs r2, r2, #0
	bl sub_08001B54
	ldr r0, _080140BC
	ldr r1, _080140C0
	ldr r1, [r1]
	ldr r4, _080140C4
	ldr r3, _080140C8
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r2, #2
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	bl sub_080031F0
	ldr r0, _080140CC
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080140B8: .4byte gUnknown_03005314
_080140BC: .4byte gUnknown_02000008
_080140C0: .4byte gUnknown_02000028
_080140C4: .4byte gGame
_080140C8: .4byte 0x00005960
_080140CC: .4byte 0x000067C4
	.syntax divided
