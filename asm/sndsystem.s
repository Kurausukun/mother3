.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806FD78
sub_0806FD78: @ 0x0806FD78
	ldr r0, _0806FD7C @ =gUnknown_02001F14
	bx lr
	.align 2, 0
_0806FD7C: .4byte gUnknown_02001F14

	thumb_func_start sub_0806FD80
sub_0806FD80: @ 0x0806FD80
	push {r4, lr}
	ldr r1, _0806FDA8 @ =gUnknown_02001F20
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806FD9C
	ldr r4, _0806FDAC @ =gUnknown_02001F24
	movs r0, #0x24
	bl __builtin_new
	bl sub_0806FE04
	str r0, [r4]
_0806FD9C:
	ldr r0, _0806FDAC @ =gUnknown_02001F24
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FDA8: .4byte gUnknown_02001F20
_0806FDAC: .4byte gUnknown_02001F24

	thumb_func_start sub_0806FDB0
sub_0806FDB0: @ 0x0806FDB0
	ldr r0, _0806FDB8 @ =gUnknown_02001F24
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806FDB8: .4byte gUnknown_02001F24

	thumb_func_start sub_0806FDBC
sub_0806FDBC: @ 0x0806FDBC
	push {r4, r5, lr}
	ldr r1, _0806FDF0 @ =gUnknown_02001F20
	ldr r0, [r1]
	cmp r0, #0
	ble _0806FDE8
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806FDE8
	ldr r5, _0806FDF4 @ =gUnknown_02001F24
	ldr r2, [r5]
	cmp r2, #0
	beq _0806FDE6
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806FDE6:
	str r4, [r5]
_0806FDE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FDF0: .4byte gUnknown_02001F20
_0806FDF4: .4byte gUnknown_02001F24

	thumb_func_start sub_0806FDF8
sub_0806FDF8: @ 0x0806FDF8
	push {lr}
	bl sub_0806FD78
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FE04
sub_0806FE04: @ 0x0806FE04
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0806FE58 @ =vt_09F805D0
	str r0, [r4, #0x1c]
	bl m4aMPlayAllStop
	movs r0, #0x50
	strh r0, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #1
	strb r0, [r1]
	bl get__10IrcManager
	ldr r1, _0806FE5C @ =gUnknown_08101CBC
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
	ldr r1, _0806FE60 @ =gUnknown_08101CC4
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

	thumb_func_start sub_0806FE64
sub_0806FE64: @ 0x0806FE64
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806FEB0 @ =vt_09F805D0
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
	ldr r1, _0806FEB4 @ =gUnknown_08101CBC
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069CF4__3IrcUiG5Intr2
	bl get__10IrcManager
	ldr r1, _0806FEB8 @ =gUnknown_08101CC4
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

	thumb_func_start sub_0806FEBC
sub_0806FEBC: @ 0x0806FEBC
	push {lr}
	bl m4aSoundVSyncOn
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FEC8
sub_0806FEC8: @ 0x0806FEC8
	push {lr}
	bl m4aSoundVSyncOff
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FED4
sub_0806FED4: @ 0x0806FED4
	push {r4, lr}
	adds r4, r0, #0
	strh r1, [r4, #0x20]
	bl get__10IrcManager
	ldrh r2, [r4, #0x20]
	movs r1, #0xa0
	subs r1, r1, r2
	bl sub_08069AF8__3IrcUi
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FEF0
sub_0806FEF0: @ 0x0806FEF0
	adds r0, #0x22
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806FEF8
sub_0806FEF8: @ 0x0806FEF8
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0806FEFC
sub_0806FEFC: @ 0x0806FEFC
	adds r0, #0x22
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806FF04
sub_0806FF04: @ 0x0806FF04
	push {lr}
	bl m4aSoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FF10
sub_0806FF10: @ 0x0806FF10
	push {lr}
	bl m4aSoundVSync
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806FF1C
sub_0806FF1C: @ 0x0806FF1C
	push {r4, lr}
	ldr r4, _0806FF30 @ =gUnknown_02001F14
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806FF34 @ =vt_09F80668
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806FF30: .4byte gUnknown_02001F14
_0806FF34: .4byte vt_09F80668
