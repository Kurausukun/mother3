	.syntax unified
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r0, _08014224
	ldr r1, _08014228
	ldr r1, [r1]
	ldr r4, _0801422C
	ldr r3, _08014230
	adds r2, r4, r3
	ldrh r3, [r2]
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	movs r2, #0
	bl sub_080031F0
	ldr r0, _08014234
	adds r1, r4, r0
	movs r0, #0x40
	strh r0, [r1]
	ldr r3, _08014238
	adds r1, r4, r3
	movs r0, #8
	strh r0, [r1]
	ldr r1, _0801423C
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #3
	bl sub_08005900
	ldr r3, _08014240
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
_08014224: .4byte gUnknown_02000008
_08014228: .4byte gUnknown_02000028
_0801422C: .4byte gGame
_08014230: .4byte 0x00005960
_08014234: .4byte 0x00005968
_08014238: .4byte 0x0000596A
_0801423C: .4byte 0x0000596C
_08014240: .4byte 0x000067C4
	.syntax divided
