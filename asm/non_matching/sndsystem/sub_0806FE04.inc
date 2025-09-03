	.syntax unified
sub_0806FE04:
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0806FE58
	str r0, [r4, #0x1c]
	bl m4aMPlayAllStop
	movs r0, #0x50
	strh r0, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	bl get__10IrcManager
	ldr r1, _0806FE5C
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069AC0__3IrcUiG5Intr2
	bl get__10IrcManager
	ldrh r2, [r4, #0x20]
	movs r1, #0xa0
	subs r1, r1, r2
	bl sub_08069AF8__3IrcUi
	bl get__10IrcManager
	ldr r1, _0806FE60
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069A50__3IrcUiG5Intr2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FE58: .4byte vt_09F805D0
_0806FE5C: .4byte gUnknown_08101CBC
_0806FE60: .4byte gUnknown_08101CC4
	.syntax divided
