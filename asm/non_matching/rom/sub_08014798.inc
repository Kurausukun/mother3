	.syntax unified
sub_08014798:
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _080147EC
	ldr r1, _080147F0
	ldr r1, [r1]
	ldr r4, _080147F4
	ldr r3, _080147F8
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r2, #1
	str r2, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	bl sub_080031F0
	ldr r1, _080147FC
	adds r0, r4, r1
	strh r5, [r0]
	ldr r3, _08014800
	adds r1, r4, r3
	movs r0, #8
	strh r0, [r1]
	ldr r1, _08014804
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #3
	bl sub_08005900
	ldr r3, _08014808
	adds r4, r4, r3
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080147EC: .4byte gUnknown_02000008
_080147F0: .4byte gUnknown_02000028
_080147F4: .4byte gGame
_080147F8: .4byte 0x00005960
_080147FC: .4byte 0x00005968
_08014800: .4byte 0x0000596A
_08014804: .4byte 0x0000596C
_08014808: .4byte 0x000067C4
	.syntax divided
