	.syntax unified
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _08014678
	ldr r1, _0801467C
	ldr r1, [r1]
	ldr r4, _08014680
	ldr r3, _08014684
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r2, #3
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	bl sub_080031F0
	ldr r0, _08014688
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
_08014678: .4byte gUnknown_02000008
_0801467C: .4byte gUnknown_02000028
_08014680: .4byte gGame
_08014684: .4byte 0x00005960
_08014688: .4byte 0x000067C4
	.syntax divided
