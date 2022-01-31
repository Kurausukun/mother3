    .syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _0805D54C @ =_vt.6System
	str r0, [r5, #0x1c]
	ldr r0, _0805D550 @ =gSave
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, _0805D554 @ =0x00001111
	adds r0, r0, r3
	bl sub_080692C0
	bl sub_08069318
	bl sub_0805D210
	bl makeInstance__10IrcManager
	bl get__10IrcManager
	ldr r1, _0805D558 @ =gIntrHandlers
	bl init__3IrcP8IrqTable
	bl makeInstance__12ClockManager
	bl sub_0806FD80
	bl sub_0806FDB0
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0x82
	bl _call_via_r2
	bl sub_0806A974
	bl sub_0806B040
	bl sub_0806BDE4
	bl sub_0806CBE0
	bl sub_0806E488
	movs r0, #8
	bl __builtin_new
	bl sub_08068770
	str r0, [r5, #0x20]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0805D55C @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0805D560 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0805D564 @ =gUnknown_080F24D8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805D54C: .4byte _vt.6System
_0805D550: .4byte gSave
_0805D554: .4byte 0x00001111
_0805D558: .4byte gIntrHandlers
_0805D55C: .4byte _vt.3Unk
_0805D560: .4byte _vt.8AppClock
_0805D564: .4byte gUnknown_080F24D8
    .syntax divided
