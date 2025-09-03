	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806FEB0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806FE82
	bl VBlankIntrWait
	adds r0, r4, #0
	bl sub_0806FEC8
_0806FE82:
	bl get__10IrcManager
	ldr r1, _0806FEB4
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069CF4__3IrcUiG5Intr2
	bl get__10IrcManager
	ldr r1, _0806FEB8
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069C84__3IrcUiG5Intr2
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FEB0: .4byte vt_09F805D0
_0806FEB4: .4byte gUnknown_08101CBC
_0806FEB8: .4byte gUnknown_08101CC4
	.syntax divided
