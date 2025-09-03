	.syntax unified
sub_080145F4:
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _0801462C
	ldr r1, _08014630
	ldr r1, [r1]
	ldr r4, _08014634
	ldr r3, _08014638
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	bl sub_080031F0
	ldr r0, _0801463C
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
_0801462C: .4byte gUnknown_02000008
_08014630: .4byte gUnknown_02000028
_08014634: .4byte gGame
_08014638: .4byte 0x00005960
_0801463C: .4byte 0x000067C4
	.syntax divided
