	.syntax unified
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _08014060
	ldr r1, _08014064
	ldr r1, [r1]
	ldr r4, _08014068
	ldr r3, _0801406C
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	bl sub_080031F0
	ldr r0, _08014070
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
_08014060: .4byte gUnknown_02000008
_08014064: .4byte gUnknown_02000028
_08014068: .4byte gGame
_0801406C: .4byte 0x00005960
_08014070: .4byte 0x000067C4
	.syntax divided
