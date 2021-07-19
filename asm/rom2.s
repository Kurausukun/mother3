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
	bl sub_08069918
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

	thumb_func_start sub_08069918
sub_08069918: @ 0x08069918
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _08069948 @ =0x09F7EB20
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	movs r2, #0
	movs r1, #0xc
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r0, r4, r3
_08069934:
	strb r2, [r0]
	subs r0, #0x34
	subs r1, #1
	cmp r1, #0
	bge _08069934
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08069948: .4byte 0x09F7EB20

	thumb_func_start sub_0806994C
sub_0806994C: @ 0x0806994C
	push {r4, r5, r6, lr}
	ldr r2, _08069974 @ =0x09F7EB20
	str r2, [r0, #0x1c]
	ldr r5, _08069978 @ =0x04000208
	movs r4, #0
	strh r4, [r5]
	ldr r3, _0806997C @ =0x04000200
	movs r6, #0x80
	lsls r6, r6, #6
	adds r2, r6, #0
	strh r2, [r3]
	ldr r2, _08069980 @ =0x04000004
	strh r4, [r2]
	movs r2, #1
	strh r2, [r5]
	bl _._4Base
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08069974: .4byte 0x09F7EB20
_08069978: .4byte 0x04000208
_0806997C: .4byte 0x04000200
_08069980: .4byte 0x04000004

	thumb_func_start sub_08069984
sub_08069984: @ 0x08069984
	push {r4, lr}
	ldr r3, _080699D8 @ =0x04000208
	movs r2, #0
	strh r2, [r3]
	ldr r0, _080699DC @ =sub_08069F20
	str r0, [r1]
	ldr r0, _080699E0 @ =sub_08069F3C
	str r0, [r1, #4]
	ldr r0, _080699E4 @ =sub_08069F4C
	str r0, [r1, #8]
	ldr r0, _080699E8 @ =sub_08069F5C
	str r0, [r1, #0xc]
	ldr r0, _080699EC @ =sub_08069F6C
	str r0, [r1, #0x10]
	ldr r0, _080699F0 @ =sub_08069F7C
	str r0, [r1, #0x14]
	ldr r0, _080699F4 @ =sub_08069F8C
	str r0, [r1, #0x18]
	ldr r0, _080699F8 @ =sub_08069F9C
	str r0, [r1, #0x1c]
	ldr r0, _080699FC @ =sub_08069FAC
	str r0, [r1, #0x20]
	ldr r0, _08069A00 @ =sub_08069FBC
	str r0, [r1, #0x24]
	ldr r0, _08069A04 @ =sub_08069FCC
	str r0, [r1, #0x28]
	ldr r0, _08069A08 @ =sub_08069FDC
	str r0, [r1, #0x2c]
	ldr r0, _08069A0C @ =sub_08069FEC
	str r0, [r1, #0x30]
	ldr r1, _08069A10 @ =0x04000200
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r4, #0
	strh r0, [r1]
	ldr r0, _08069A14 @ =0x04000004
	strh r2, [r0]
	movs r0, #1
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080699D8: .4byte 0x04000208
_080699DC: .4byte sub_08069F20
_080699E0: .4byte sub_08069F3C
_080699E4: .4byte sub_08069F4C
_080699E8: .4byte sub_08069F5C
_080699EC: .4byte sub_08069F6C
_080699F0: .4byte sub_08069F7C
_080699F4: .4byte sub_08069F8C
_080699F8: .4byte sub_08069F9C
_080699FC: .4byte sub_08069FAC
_08069A00: .4byte sub_08069FBC
_08069A04: .4byte sub_08069FCC
_08069A08: .4byte sub_08069FDC
_08069A0C: .4byte sub_08069FEC
_08069A10: .4byte 0x04000200
_08069A14: .4byte 0x04000004

	thumb_func_start sub_08069A18
sub_08069A18: @ 0x08069A18
	ldr r2, _08069A28 @ =0x04000208
	movs r1, #0
	strh r1, [r2]
	ldr r1, [r0, #0x20]
	adds r1, #1
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
_08069A28: .4byte 0x04000208

	thumb_func_start sub_08069A2C
sub_08069A2C: @ 0x08069A2C
	push {lr}
	adds r1, r0, #0
	ldr r2, _08069A4C @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r0, [r1, #0x20]
	cmp r0, #0
	beq _08069A48
	subs r0, #1
	str r0, [r1, #0x20]
	cmp r0, #0
	bne _08069A48
	movs r0, #1
	strh r0, [r2]
_08069A48:
	pop {r0}
	bx r0
	.align 2, 0
_08069A4C: .4byte 0x04000208

	thumb_func_start sub_08069A50
sub_08069A50: @ 0x08069A50
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl sub_08069A18
	movs r0, #8
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	bl sub_08069C24
	adds r0, r6, #0
	bl sub_08069A2C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069A88
sub_08069A88: @ 0x08069A88
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl sub_08069A18
	movs r0, #0x10
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #1
	mov r2, r8
	bl sub_08069C24
	adds r0, r6, #0
	bl sub_08069A2C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069AC0
sub_08069AC0: @ 0x08069AC0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl sub_08069A18
	movs r0, #0x20
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #2
	mov r2, r8
	bl sub_08069C24
	adds r0, r6, #0
	bl sub_08069A2C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069AF8
sub_08069AF8: @ 0x08069AF8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08069A18
	ldr r1, _08069B20 @ =0x04000004
	ldrh r2, [r1]
	movs r0, #0xff
	ands r0, r2
	strh r0, [r1]
	lsls r4, r4, #8
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	adds r0, r5, #0
	bl sub_08069A2C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069B20: .4byte 0x04000004

	thumb_func_start sub_08069B24
sub_08069B24: @ 0x08069B24
	sub sp, #4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	bl sub_08069A18
	adds r6, #3
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	adds r1, r6, #0
	mov r2, sb
	bl sub_08069C24
	mov r0, r8
	bl sub_08069A2C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08069B6C
sub_08069B6C: @ 0x08069B6C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl sub_08069A18
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #7
	mov r2, r8
	bl sub_08069C24
	adds r0, r6, #0
	bl sub_08069A2C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069BA4
sub_08069BA4: @ 0x08069BA4
	sub sp, #4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	bl sub_08069A18
	adds r6, #8
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	adds r1, r6, #0
	mov r2, sb
	bl sub_08069C24
	mov r0, r8
	bl sub_08069A2C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08069BEC
sub_08069BEC: @ 0x08069BEC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl sub_08069A18
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #0xc
	mov r2, r8
	bl sub_08069C24
	adds r0, r6, #0
	bl sub_08069A2C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069C24
sub_08069C24: @ 0x08069C24
	sub sp, #4
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	str r3, [sp, #0x14]
	ldr r3, [sp, #0x14]
	ldr r4, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r1, #0x34
	muls r1, r6, r1
	adds r1, #0x28
	adds r5, r0, r1
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r0, r5, #4
	adds r0, r0, r1
	str r2, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r5, r0
	str r3, [r0, #0x14]
	str r4, [r0, #0x18]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08069C6E
	ldr r2, _08069C7C @ =0x04000200
	movs r0, #1
	lsls r0, r6
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08069C80 @ =0x04000004
	ldrh r1, [r2]
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
_08069C6E:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0
_08069C7C: .4byte 0x04000200
_08069C80: .4byte 0x04000004

	thumb_func_start sub_08069C84
sub_08069C84: @ 0x08069C84
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl sub_08069A18
	movs r0, #8
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	bl sub_08069E2C
	adds r0, r6, #0
	bl sub_08069A2C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069CBC
sub_08069CBC: @ 0x08069CBC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl sub_08069A18
	movs r0, #0x10
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #1
	mov r2, r8
	bl sub_08069E2C
	adds r0, r6, #0
	bl sub_08069A2C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069CF4
sub_08069CF4: @ 0x08069CF4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl sub_08069A18
	movs r0, #0x20
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #2
	mov r2, r8
	bl sub_08069E2C
	adds r0, r6, #0
	bl sub_08069A2C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069D2C
sub_08069D2C: @ 0x08069D2C
	sub sp, #4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	bl sub_08069A18
	adds r6, #3
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	adds r1, r6, #0
	mov r2, sb
	bl sub_08069E2C
	mov r0, r8
	bl sub_08069A2C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08069D74
sub_08069D74: @ 0x08069D74
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl sub_08069A18
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #7
	mov r2, r8
	bl sub_08069E2C
	adds r0, r6, #0
	bl sub_08069A2C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069DAC
sub_08069DAC: @ 0x08069DAC
	sub sp, #4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	bl sub_08069A18
	adds r6, #8
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	mov r0, r8
	adds r1, r6, #0
	mov r2, sb
	bl sub_08069E2C
	mov r0, r8
	bl sub_08069A2C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08069DF4
sub_08069DF4: @ 0x08069DF4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r5, r3, #0
	adds r4, r2, #0
	bl sub_08069A18
	movs r0, #0
	str r0, [sp, #4]
	str r5, [sp]
	adds r3, r4, #0
	adds r0, r6, #0
	movs r1, #0xc
	mov r2, r8
	bl sub_08069E2C
	adds r0, r6, #0
	bl sub_08069A2C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08069E2C
sub_08069E2C: @ 0x08069E2C
	sub sp, #4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r1
	mov sl, r2
	str r3, [sp, #0x28]
	ldr r1, [sp, #0x30]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	movs r1, #0x34
	mov r2, ip
	muls r2, r1, r2
	adds r1, r2, #0
	adds r1, #0x28
	adds r5, r0, r1
	movs r6, #0
	ldrb r7, [r5]
	cmp r6, r7
	bge _08069F0A
	adds r0, r5, #4
	str r0, [sp, #4]
	ldr r1, _08069EF4 @ =0x04000200
	mov sb, r1
	adds r3, r5, #0
	adds r3, #0x16
	adds r4, r0, #0
	ldr r2, [sp, #0x28]
	asrs r2, r2, #0x10
	mov r8, r2
	movs r2, #0
_08069E72:
	ldr r0, [r4]
	cmp r0, sl
	bne _08069EFC
	movs r7, #0
	ldrsh r1, [r3, r7]
	cmp r1, r8
	bne _08069EFC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08069E96
	movs r0, #2
	ldrsh r1, [r3, r0]
	ldr r7, [sp, #0x2c]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _08069EA4
_08069E96:
	adds r0, r5, #0
	adds r0, #0x18
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [sp, #0x2c]
	cmp r0, r1
	bne _08069EFC
_08069EA4:
	adds r0, r6, #1
	ldrb r7, [r5]
	cmp r0, r7
	bge _08069ECC
	adds r3, r0, #0
	adds r2, r2, r5
	lsls r0, r6, #2
	ldr r1, [sp, #4]
	adds r4, r0, r1
_08069EB6:
	ldr r0, [r4, #4]
	stm r4!, {r0}
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0x20]
	str r0, [r2, #0x14]
	str r1, [r2, #0x18]
	adds r3, #1
	adds r2, #8
	ldrb r7, [r5]
	cmp r3, r7
	blt _08069EB6
_08069ECC:
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08069F0A
	movs r1, #1
	mov r0, ip
	lsls r1, r0
	mov r2, sb
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r1, _08069EF8 @ =0x04000004
	ldrh r0, [r1]
	ldr r7, [sp]
	bics r0, r7
	strh r0, [r1]
	b _08069F0A
	.align 2, 0
_08069EF4: .4byte 0x04000200
_08069EF8: .4byte 0x04000004
_08069EFC:
	adds r3, #8
	adds r4, #4
	adds r2, #8
	adds r6, #1
	ldrb r0, [r5]
	cmp r6, r0
	blt _08069E72
_08069F0A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #4
	bx r3

	thumb_func_start sub_08069F1C
sub_08069F1C: @ 0x08069F1C
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_08069F20
sub_08069F20: @ 0x08069F20
	push {lr}
	bl sub_080698C4
	movs r1, #0
	bl sub_08069FFC
	bl sub_080698C4
	ldr r1, [r0, #0x24]
	adds r1, #1
	str r1, [r0, #0x24]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08069F3C
sub_08069F3C: @ 0x08069F3C
	push {lr}
	bl sub_080698C4
	movs r1, #1
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069F4C
sub_08069F4C: @ 0x08069F4C
	push {lr}
	bl sub_080698C4
	movs r1, #2
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069F5C
sub_08069F5C: @ 0x08069F5C
	push {lr}
	bl sub_080698C4
	movs r1, #3
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069F6C
sub_08069F6C: @ 0x08069F6C
	push {lr}
	bl sub_080698C4
	movs r1, #4
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069F7C
sub_08069F7C: @ 0x08069F7C
	push {lr}
	bl sub_080698C4
	movs r1, #5
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069F8C
sub_08069F8C: @ 0x08069F8C
	push {lr}
	bl sub_080698C4
	movs r1, #6
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069F9C
sub_08069F9C: @ 0x08069F9C
	push {lr}
	bl sub_080698C4
	movs r1, #7
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069FAC
sub_08069FAC: @ 0x08069FAC
	push {lr}
	bl sub_080698C4
	movs r1, #8
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069FBC
sub_08069FBC: @ 0x08069FBC
	push {lr}
	bl sub_080698C4
	movs r1, #9
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069FCC
sub_08069FCC: @ 0x08069FCC
	push {lr}
	bl sub_080698C4
	movs r1, #0xa
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069FDC
sub_08069FDC: @ 0x08069FDC
	push {lr}
	bl sub_080698C4
	movs r1, #0xb
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069FEC
sub_08069FEC: @ 0x08069FEC
	push {lr}
	bl sub_080698C4
	movs r1, #0xc
	bl sub_08069FFC
	pop {r0}
	bx r0

	thumb_func_start sub_08069FFC
sub_08069FFC: @ 0x08069FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, #0x28
	ldr r1, [sp]
	adds r1, r1, r0
	mov sl, r1
	movs r2, #0
	mov sb, r2
	ldrb r0, [r1]
	cmp sb, r0
	bge _0806A07E
	mov r8, sl
_0806A024:
	mov r2, sb
	lsls r1, r2, #2
	mov r0, sl
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	mov ip, r0
	mov r0, r8
	ldr r2, [r0, #0x14]
	ldr r3, [r0, #0x18]
	asrs r4, r2, #0x10
	cmp r4, #0
	ble _0806A054
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	add r0, ip
	ldr r1, [r0]
	lsls r0, r4, #3
	adds r0, r0, r1
	subs r0, #8
	ldr r6, [r0]
	ldr r7, [r0, #4]
	adds r5, r7, #0
	b _0806A056
_0806A054:
	adds r5, r3, #0
_0806A056:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r4, #0
	ble _0806A066
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	b _0806A068
_0806A066:
	adds r0, r1, #0
_0806A068:
	add r0, ip
	bl _call_via_r5
	movs r1, #8
	add r8, r1
	movs r2, #1
	add sb, r2
	mov r0, sl
	ldrb r0, [r0]
	cmp sb, r0
	blt _0806A024
_0806A07E:
	ldr r0, [sp]
	bl sub_08069A18
	ldr r1, _0806A0A4 @ =gUnknown_03007FF8
	movs r0, #1
	ldr r2, [sp, #4]
	lsls r0, r2
	strh r0, [r1]
	ldr r0, [sp]
	bl sub_08069A2C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A0A4: .4byte gUnknown_03007FF8

	thumb_func_start sub_0806A0A8
sub_0806A0A8: @ 0x0806A0A8
	push {r4, lr}
	ldr r4, _0806A0BC @ =gUnknown_02001C5C
	adds r0, r4, #0
	bl sub_08068938
	ldr r0, _0806A0C0 @ =0x09F7EB88
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A0BC: .4byte gUnknown_02001C5C
_0806A0C0: .4byte 0x09F7EB88
