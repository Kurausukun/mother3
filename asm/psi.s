.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08082484
sub_08082484: @ 0x08082484
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	str r0, [r4, #0x28]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r4, #0x34]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _080824AC @ =vt_09F83548
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080824AC: .4byte vt_09F83548

	thumb_func_start tellStatus
tellStatus: @ 0x080824B0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	mov r8, r0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl __3Msg
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	adds r4, #0x3f
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r5, [sp]
	mov r0, r8
	adds r1, r4, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_08073460__3MsgiRC3MsgN22
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082510
sub_08082510: @ 0x08082510
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl __4Base
	ldr r0, _08082620 @ =vt_09F83810
	str r0, [r5, #0x1c]
	lsls r4, r4, #3
	ldr r0, _08082624 @ =gUnknown_080E1708
	adds r4, r4, r0
	str r4, [r5, #0x24]
	str r6, [r5, #0x28]
	movs r0, #0
	mov r8, r0
	mov r0, r8
	strh r0, [r5, #0x2c]
	strh r0, [r5, #0x2e]
	ldrb r0, [r4, #1]
	strh r0, [r5, #0x30]
	mov r0, r8
	strh r0, [r5, #0x32]
	bl get__13BattleManager
	adds r6, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _08082628 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _0808262C @ =_vt.10RoundBegin
	str r0, [sp, #0x20]
	mov r0, r8
	strh r0, [r4, #0x20]
	ldr r0, _08082630 @ =gUnknown_0810C608
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08082634 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _08082638 @ =gUnknown_0810C610
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808263C @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _08082640 @ =gUnknown_0810C618
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _08082644 @ =_vt.8RoundEnd
	str r0, [sp, #0x20]
	mov r0, r8
	strh r0, [r4, #0x20]
	ldr r0, _08082648 @ =gUnknown_0810C620
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08082620: .4byte vt_09F83810
_08082624: .4byte gUnknown_080E1708
_08082628: .4byte _vt.3Unk
_0808262C: .4byte _vt.10RoundBegin
_08082630: .4byte gUnknown_0810C608
_08082634: .4byte _vt.13UnitTurnBegin
_08082638: .4byte gUnknown_0810C610
_0808263C: .4byte _vt.11UnitTurnEnd
_08082640: .4byte gUnknown_0810C618
_08082644: .4byte _vt.8RoundEnd
_08082648: .4byte gUnknown_0810C620

	thumb_func_start sub_0808264C
sub_0808264C: @ 0x0808264C
	push {lr}
	ldr r2, _0808265C @ =vt_09F83810
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_0808265C: .4byte vt_09F83810

	thumb_func_start sub_08082660
sub_08082660: @ 0x08082660
	movs r0, #0
	bx lr

	thumb_func_start sub_08082664
sub_08082664: @ 0x08082664
	movs r0, #0
	bx lr

	thumb_func_start sub_08082668
sub_08082668: @ 0x08082668
	movs r0, #0
	bx lr

	thumb_func_start sub_0808266C
sub_0808266C: @ 0x0808266C
	movs r0, #0
	bx lr

	thumb_func_start sub_08082670
sub_08082670: @ 0x08082670
	movs r0, #1
	bx lr

	thumb_func_start nullsub_39
nullsub_39: @ 0x08082674
	bx lr
	.align 2, 0

	thumb_func_start sub_08082678
sub_08082678: @ 0x08082678
	strh r1, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0808267C
sub_0808267C: @ 0x0808267C
	strh r1, [r0, #0x2e]
	bx lr

	thumb_func_start sub_08082680
sub_08082680: @ 0x08082680
	strh r1, [r0, #0x30]
	bx lr

	thumb_func_start sub_08082684
sub_08082684: @ 0x08082684
	strh r1, [r0, #0x32]
	bx lr

	thumb_func_start sub_08082688
sub_08082688: @ 0x08082688
	ldr r0, [r0, #0x24]
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082690
sub_08082690: @ 0x08082690
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_08082694
sub_08082694: @ 0x08082694
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl tellStatus
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080826C0
sub_080826C0: @ 0x080826C0
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_080826C8
sub_080826C8: @ 0x080826C8
	movs r1, #0x30
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_080826D0
sub_080826D0: @ 0x080826D0
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_080826D8
sub_080826D8: @ 0x080826D8
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_080826E0
sub_080826E0: @ 0x080826E0
	ldr r0, [r0, #0x24]
	ldrh r0, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_080826E8
sub_080826E8: @ 0x080826E8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	cmp r0, #1
	bgt _0808276C
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x88
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r0, _08082768 @ =0x0000050D
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r3, [r5, #4]
	adds r1, r4, #0
	bl _call_via_r3
	b _080827A0
	.align 2, 0
_08082768: .4byte 0x0000050D
_0808276C:
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x88
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r0, _080827A8 @ =0x00000511
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r3, [r5, #4]
	adds r1, r4, #0
	bl _call_via_r3
_080827A0:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080827A8: .4byte 0x00000511

	thumb_func_start sub_080827AC
sub_080827AC: @ 0x080827AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	ldr r2, [r0, #0x1c]
	adds r5, r2, #0
	adds r5, #0x88
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r4, r0, r4
	adds r2, #0xe0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r0, _080827F0 @ =0x0000050E
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	ldr r3, [r5, #4]
	adds r1, r4, #0
	bl _call_via_r3
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080827F0: .4byte 0x0000050E

	thumb_func_start sub_080827F4
sub_080827F4: @ 0x080827F4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	ldr r1, [r6, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	cmp r0, #1
	bgt _08082874
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x88
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	movs r0, #0xa2
	lsls r0, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r3, [r5, #4]
	adds r1, r4, #0
	bl _call_via_r3
	b _080828A8
_08082874:
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x88
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	ldr r0, _080828B0 @ =0x0000050F
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r3, [r5, #4]
	adds r1, r4, #0
	bl _call_via_r3
_080828A8:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080828B0: .4byte 0x0000050F

	thumb_func_start sub_080828B4
sub_080828B4: @ 0x080828B4
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _080828C2
	movs r1, #1
_080828C2:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080828C8
sub_080828C8: @ 0x080828C8
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x24]
	ldrb r0, [r0, #5]
	cmp r0, #1
	bne _080828D6
	movs r1, #1
_080828D6:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080828DC
sub_080828DC: @ 0x080828DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	mov r8, r0
	adds r4, r1, #0
	lsls r6, r2, #0x10
	lsrs r6, r6, #0x10
	ldr r2, [r4, #0x1c]
	adds r2, #0xf0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldr r0, [r4, #0x1c]
	adds r0, #0xe8
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	mov r0, r8
	adds r1, r6, #0
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082968
sub_08082968: @ 0x08082968
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08082980
sub_08082980: @ 0x08082980
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x2e]
	adds r0, #1
	strh r0, [r5, #0x2e]
	ldr r1, [r5, #0x1c]
	adds r1, #0xf8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _080829EA
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	ldr r1, [r5, #0x1c]
	adds r1, #0xf8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _080829EA
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_08073EE8
	movs r0, #0
	b _080829EC
_080829EA:
	movs r0, #1
_080829EC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080829F4
sub_080829F4: @ 0x080829F4
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08082A10
sub_08082A10: @ 0x08082A10
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _08082A98
	ldr r1, [r5, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _08082A92
	movs r0, #0x32
	ldrsh r4, [r5, r0]
	ldr r1, [r5, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08082A92
	ldr r1, [r5, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_08073EE8
	movs r0, #0
	b _08082A9A
_08082A92:
	ldrh r0, [r5, #0x32]
	adds r0, #1
	strh r0, [r5, #0x32]
_08082A98:
	movs r0, #1
_08082A9A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08082AA0
sub_08082AA0: @ 0x08082AA0
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_40
nullsub_40: @ 0x08082ABC
	bx lr
	.align 2, 0

	thumb_func_start sub_08082AC0
sub_08082AC0: @ 0x08082AC0
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08082AD8
sub_08082AD8: @ 0x08082AD8
	bx lr
	.align 2, 0

	thumb_func_start sub_08082ADC
sub_08082ADC: @ 0x08082ADC
	ldr r0, _08082AE0 @ =gUnknown_020034A0
	bx lr
	.align 2, 0
_08082AE0: .4byte gUnknown_020034A0

	thumb_func_start sub_08082AE4
sub_08082AE4: @ 0x08082AE4
	push {lr}
	bl sub_08082ADC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082AF0
sub_08082AF0: @ 0x08082AF0
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #8
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #8
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl genMisctextMsg__3MsgPvUi
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start tellTurnAction
tellTurnAction: @ 0x08082B1C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	mov r8, r0
	adds r4, r1, #0
	add r0, sp, #4
	bl __3Msg
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	adds r4, #0xad
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r5, [sp]
	mov r0, r8
	adds r1, r4, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_08073460__3MsgiRC3MsgN22
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08082B78
sub_08082B78: @ 0x08082B78
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl __6ActionP4Unit
	ldr r0, _08082BA0 @ =vt_09F83958
	str r0, [r5, #0x1c]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _08082BA4 @ =gPsiData
	adds r0, r0, r1
	str r0, [r5, #0x48]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08082BA0: .4byte vt_09F83958
_08082BA4: .4byte gPsiData

	thumb_func_start  sub_08082BA8
 sub_08082BA8: @ 0x08082BA8
	push {lr}
	ldr r2, _08082BB8 @ =vt_09F83958
	str r2, [r0, #0x1c]
	bl _._6Action
	pop {r0}
	bx r0
	.align 2, 0
_08082BB8: .4byte vt_09F83958

	thumb_func_start sub_08082BBC
sub_08082BBC: @ 0x08082BBC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08082C5A
	ldr r1, [r5, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0x9a
	lsls r2, r2, #1
	mov r0, sp
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	add r1, sp, #0xc
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	ldr r1, [r5, #0x1c]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_08073CF0
	movs r0, #1
	b _08082D66
_08082C5A:
	ldr r1, [r5, #0x1c]
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r6, #0xa8
	lsls r6, r6, #2
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08082CCE
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #6
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x10
	b _08082D44
_08082CCE:
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x45
	bgt _08082D60
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, r1, r6
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08082D60
	ldr r1, [r5, #0x1c]
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xac
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #8
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r1, sp, #0x14
_08082D44:
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	mov r0, sp
	movs r1, #2
	bl _._3Msg
	movs r0, #0
	b _08082D66
_08082D60:
	adds r0, r5, #0
	bl action_1a0__6Action
_08082D66:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082D70
sub_08082D70: @ 0x08082D70
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08082DC4
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_08073CF0
_08082DC4:
	adds r0, r5, #0
	bl action_150__6Action
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08082DD0
sub_08082DD0: @ 0x08082DD0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #6
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082DE4
sub_08082DE4: @ 0x08082DE4
	ldr r0, [r0, #0x48]
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082DEC
sub_08082DEC: @ 0x08082DEC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08082AF0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082E1C
sub_08082E1C: @ 0x08082E1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08001BFC
	adds r1, r0, #0
	ldr r2, _08082EB4 @ =0x0000FFFF
	add r0, sp, #4
	bl genMisctextMsg__3MsgPvUi
	ldr r2, [r5, #0x1c]
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x10
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	adds r6, r4, #0
	ldr r1, [r5, #0x1c]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r8, r6
	cmp r0, #0
	beq _08082EB8
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r4, sp, #0x1c
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	b _08082EC0
	.align 2, 0
_08082EB4: .4byte 0x0000FFFF
_08082EB8:
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
_08082EC0:
	adds r5, r4, #0
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	adds r0, r7, #0
	add r1, sp, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_080734A0
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082F08
sub_08082F08: @ 0x08082F08
	movs r0, #0
	bx lr

	thumb_func_start sub_08082F0C
sub_08082F0C: @ 0x08082F0C
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082F14
sub_08082F14: @ 0x08082F14
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082F1C
sub_08082F1C: @ 0x08082F1C
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x18]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082F24
sub_08082F24: @ 0x08082F24
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x1c]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082F2C
sub_08082F2C: @ 0x08082F2C
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x1e]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082F34
sub_08082F34: @ 0x08082F34
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x20]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082F3C
sub_08082F3C: @ 0x08082F3C
	ldr r0, [r0, #0x48]
	adds r0, #0x22
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08082F44
sub_08082F44: @ 0x08082F44
	ldr r0, [r0, #0x48]
	adds r0, #0x23
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08082F4C
sub_08082F4C: @ 0x08082F4C
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _08082F5A
	movs r0, #1
_08082F5A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082F60
sub_08082F60: @ 0x08082F60
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x28]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082F68
sub_08082F68: @ 0x08082F68
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r0, [r1, #0x48]
	ldrh r2, [r0, #0x2c]
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082F90
sub_08082F90: @ 0x08082F90
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0x48]
	ldrh r1, [r0, #0x2c]
	adds r0, r4, #0
	bl sub_08073444__5GoodsUs
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082FA8
sub_08082FA8: @ 0x08082FA8
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08082FB6
	movs r0, #1
_08082FB6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082FBC
sub_08082FBC: @ 0x08082FBC
	ldr r0, [r0, #0x48]
	adds r0, #0x2f
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08082FC4
sub_08082FC4: @ 0x08082FC4
	ldr r0, [r0, #0x48]
	adds r0, #0x30
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08082FCC
sub_08082FCC: @ 0x08082FCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08083006
	ldr r1, [r4, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08083008
_08083006:
	movs r0, #0
_08083008:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08083010
sub_08083010: @ 0x08083010
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x32]
	bx lr
	.align 2, 0

	thumb_func_start sub_08083018
sub_08083018: @ 0x08083018
	ldr r0, [r0, #0x48]
	adds r0, #0x34
	ldrb r1, [r0]
	movs r0, #0x64
	subs r0, r0, r1
	bx lr

	thumb_func_start sub_08083024
sub_08083024: @ 0x08083024
	ldr r0, [r0, #0x48]
	adds r0, #0x35
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_0808302C
sub_0808302C: @ 0x0808302C
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808303A
	movs r0, #1
_0808303A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08083040
sub_08083040: @ 0x08083040
	movs r0, #0
	bx lr

	thumb_func_start sub_08083044
sub_08083044: @ 0x08083044
	movs r0, #0
	bx lr

	thumb_func_start sub_08083048
sub_08083048: @ 0x08083048
	movs r0, #0
	bx lr

	thumb_func_start sub_0808304C
sub_0808304C: @ 0x0808304C
	push {lr}
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #8]
	cmp r0, #1
	beq _08083066
	cmp r0, #1
	ble _08083066
	cmp r0, #2
	beq _08083062
	cmp r0, #3
	bne _08083066
_08083062:
	movs r0, #1
	b _08083068
_08083066:
	movs r0, #0
_08083068:
	pop {r1}
	bx r1

	thumb_func_start sub_0808306C
sub_0808306C: @ 0x0808306C
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_08083074
sub_08083074: @ 0x08083074
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808307C
sub_0808307C: @ 0x0808307C
	push {r4, lr}
	ldr r4, _08083090 @ =gUnknown_020034A0
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08083094 @ =vt_09F83C10
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08083090: .4byte gUnknown_020034A0
_08083094: .4byte vt_09F83C10
