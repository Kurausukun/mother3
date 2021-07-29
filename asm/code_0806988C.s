.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806988C
sub_0806988C: @ 0x0806988C
	ldr r0, _08069890 @ =gUnknown_02001C5C
	bx lr
	.align 2, 0
_08069890: .4byte gUnknown_02001C5C

	thumb_func_start sub_08069894
sub_08069894: @ 0x08069894
	push {r4, lr}
	ldr r1, _080698BC @ =gUnknown_02001C68
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _080698B2
	ldr r4, _080698C0 @ =gUnknown_02001C6C
	movs r0, #0xb3
	lsls r0, r0, #2
	bl __builtin_new
	bl __3Irc
	str r0, [r4]
_080698B2:
	ldr r0, _080698C0 @ =gUnknown_02001C6C
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080698BC: .4byte gUnknown_02001C68
_080698C0: .4byte gUnknown_02001C6C

	thumb_func_start sub_080698C4
sub_080698C4: @ 0x080698C4
	ldr r0, _080698CC @ =gUnknown_02001C6C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080698CC: .4byte gUnknown_02001C6C

	thumb_func_start sub_080698D0
sub_080698D0: @ 0x080698D0
	push {r4, r5, lr}
	ldr r1, _08069904 @ =gUnknown_02001C68
	ldr r0, [r1]
	cmp r0, #0
	ble _080698FC
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _080698FC
	ldr r5, _08069908 @ =gUnknown_02001C6C
	ldr r2, [r5]
	cmp r2, #0
	beq _080698FA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080698FA:
	str r4, [r5]
_080698FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069904: .4byte gUnknown_02001C68
_08069908: .4byte gUnknown_02001C6C

	thumb_func_start sub_0806990C
sub_0806990C: @ 0x0806990C
	push {lr}
	bl sub_0806988C
	pop {r1}
	bx r1
	.align 2, 0