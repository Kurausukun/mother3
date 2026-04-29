	.syntax unified
sub_08057C6C:
	push {lr}
	sub sp, #0x10
	adds r3, r0, #0
	adds r3, #0x38
	ldrb r1, [r3]
	movs r2, #2
	orrs r1, r2
	movs r2, #4
	orrs r1, r2
	movs r2, #8
	orrs r1, r2
	strb r1, [r3]
	ldr r1, _08057CB0
	movs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	movs r3, #0x20
	bl sub_080031F0
	movs r0, #0
	movs r1, #2
	bl musicPlayerFadeOutTemp_bgm
	movs r0, #1
	movs r1, #2
	bl musicPlayerFadeOutTemp_bgm
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_08057CB0: .4byte gUnknown_02018D24
	.syntax divided
