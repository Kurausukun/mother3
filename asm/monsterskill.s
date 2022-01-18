.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08081994
sub_08081994: @ 0x08081994
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r3, [r4, #0x1c]
	subs r0, #0x14
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080819BC
sub_080819BC: @ 0x080819BC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r3, [r4, #0x1c]
	subs r0, #0x1c
	adds r3, r3, r0
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080819E4
sub_080819E4: @ 0x080819E4
	push {lr}
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08081A08
sub_08081A08: @ 0x08081A08
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r3, [r1]
	ldr r2, [r3, #0x1c]
	adds r2, #0xd8
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08081A30
sub_08081A30: @ 0x08081A30
	push {lr}
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0xd0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08081A50
sub_08081A50: @ 0x08081A50
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r3, [r1]
	ldr r2, [r3, #0x1c]
	subs r0, #0x2c
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08081A78
sub_08081A78: @ 0x08081A78
	push {lr}
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08081A98
sub_08081A98: @ 0x08081A98
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r3, [r1]
	ldr r2, [r3, #0x1c]
	subs r0, #0x34
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08081AC0
sub_08081AC0: @ 0x08081AC0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r3, [r1]
	ldr r2, [r3, #0x1c]
	adds r2, #0xc0
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08081AE8
sub_08081AE8: @ 0x08081AE8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_080639FC
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08081B00
sub_08081B00: @ 0x08081B00
	push {lr}
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08081B20
sub_08081B20: @ 0x08081B20
	push {r4, r5, lr}
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r3, [r0, #0x1c]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r3, r3, r4
	movs r5, #0
	ldrsh r4, [r3, r5]
	adds r0, r0, r4
	ldr r3, [r3, #4]
	bl _call_via_r3
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08081B44
sub_08081B44: @ 0x08081B44
	push {r4, lr}
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0xa0
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08081B64
sub_08081B64: @ 0x08081B64
	push {r4, lr}
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x98
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08081B84
sub_08081B84: @ 0x08081B84
	push {r4, lr}
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0xf8
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08081BA4
sub_08081BA4: @ 0x08081BA4
	push {r4, lr}
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x90
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08081BC4
sub_08081BC4: @ 0x08081BC4
	push {r4, lr}
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08081BE4
sub_08081BE4: @ 0x08081BE4
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08081C08
sub_08081C08: @ 0x08081C08
	push {r4, lr}
	adds r4, r0, #0
	bl __4Unit
	ldr r0, _08081C40 @ =0x09F82F98
	str r0, [r4, #0x20]
	ldr r0, _08081C44 @ =0x09F83010
	str r0, [r4, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_0806E274
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_08063998
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08081C40: .4byte 0x09F82F98
_08081C44: .4byte 0x09F83010

	thumb_func_start sub_08081C48
sub_08081C48: @ 0x08081C48
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x24
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_0806D8EC
	ldr r0, _08081D34 @ =0x09F83418
	str r0, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r5, r6, #0
	adds r5, #0x9c
	adds r0, r5, #0
	bl sub_0806D478
	adds r0, r6, #0
	adds r0, #0x94
	str r4, [r0]
	ldr r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	mov sb, r0
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r0, _08081D38 @ =0x00000179
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_080706A0
	adds r0, r5, #0
	mov r1, sp
	bl sub_0806D4D0
	ldr r1, _08081D3C @ =0x09F44F08
	mov r8, r1
	str r1, [sp, #8]
	adds r0, r5, #0
	bl sub_0806D53C
	adds r5, #0xc
	ldr r1, _08081D40 @ =0x040000D4
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _08081D44 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, [r4, #0x1c]
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_080706A0
	ldr r0, [r4, #0x1c]
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r0, #0
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_080706A0
	add r3, sp, #0x18
	movs r0, #0x20
	mov r1, r8
	str r1, [sp, #0x20]
	str r5, [sp, #0x18]
	str r0, [r3, #4]
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_0806D9F4
	mov r2, r8
	str r2, [sp, #0x20]
	str r2, [sp, #0x14]
	str r2, [sp, #8]
	adds r0, r6, #0
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08081D34: .4byte 0x09F83418
_08081D38: .4byte 0x00000179
_08081D3C: .4byte 0x09F44F08
_08081D40: .4byte 0x040000D4
_08081D44: .4byte 0x80000010

	thumb_func_start sub_08081D48
sub_08081D48: @ 0x08081D48
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08081D6C @ =0x09F83418
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x9c
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D9A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081D6C: .4byte 0x09F83418

	thumb_func_start sub_08081D70
sub_08081D70: @ 0x08081D70
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	adds r0, #0x94
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r0, _08081DD8 @ =gUnknown_080D0D28
	adds r4, r4, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806DB60
	adds r0, r6, #0
	adds r0, #0x98
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, #2
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, #0x72
	adds r4, r4, r5
	movs r0, #0
	ldrsb r0, [r4, r0]
	mov r2, sp
	adds r1, r1, r0
	mov r0, sp
	strh r3, [r0]
	strh r1, [r2, #2]
	adds r0, r6, #0
	mov r1, sp
	bl sub_0806DB74
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08081DD8: .4byte gUnknown_080D0D28

	thumb_func_start sub_08081DDC
sub_08081DDC: @ 0x08081DDC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r1
	adds r0, #0x94
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r0, #3
	adds r4, r4, r0
	lsls r4, r4, #4
	ldr r0, _08081E8C @ =gUnknown_080D0D28
	adds r4, r4, r0
	mov r1, r8
	ldrh r0, [r1]
	adds r6, r5, #0
	adds r6, #0x98
	strh r0, [r6]
	ldr r2, [r5, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r0, [sp]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	mov r2, r8
	ldrh r2, [r2, #2]
	adds r1, r1, r2
	movs r3, #0x9a
	adds r3, r3, r5
	mov r8, r3
	strh r1, [r3]
	movs r0, #0
	ldrsh r6, [r6, r0]
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r3, r8
	movs r1, #0
	ldrsh r2, [r3, r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0x72
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r1, sp, #4
	adds r2, r2, r0
	strh r6, [r1]
	strh r2, [r1, #2]
	adds r0, r5, #0
	bl sub_0806DB74
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08081E8C: .4byte gUnknown_080D0D28

	thumb_func_start sub_08081E90
sub_08081E90: @ 0x08081E90
	bx lr
	.align 2, 0

	thumb_func_start sub_08081E94
sub_08081E94: @ 0x08081E94
	push {r4, lr}
	sub sp, #4
	str r2, [sp]
	mov r4, sp
	mov r2, sp
	ldrb r3, [r2]
	lsrs r3, r3, #3
	ldrb r2, [r4, #1]
	lsrs r2, r2, #3
	lsls r2, r2, #5
	orrs r3, r2
	ldrb r2, [r4, #2]
	lsrs r2, r2, #3
	lsls r2, r2, #0xa
	orrs r3, r2
	lsls r1, r1, #1
	adds r0, #0xa8
	adds r0, r0, r1
	strh r3, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08081EC4
sub_08081EC4: @ 0x08081EC4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, r1, #0
	adds r0, #0x98
	movs r2, #0
	ldrsh r6, [r0, r2]
	adds r0, #2
	movs r2, #0
	ldrsh r4, [r0, r2]
	ldr r2, [r1, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldr r0, [sp]
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10

	thumb_func_start sub_08081EF4
sub_08081EF4: @ 0x08081EF4
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	subs r4, r4, r1
	strh r6, [r5]
	strh r4, [r5, #2]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08081F0C
sub_08081F0C: @ 0x08081F0C
	adds r1, #0x98
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_08081F14
sub_08081F14: @ 0x08081F14
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r3, _08081F7C @ =gUnknown_0200253C
	ldr r0, [r3]
	cmp r0, #0
	bne _08081F3E
	ldr r0, _08081F80 @ =gUnknown_02002530
	movs r1, #0x20
	strh r1, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	movs r1, #0x30
	strh r1, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	movs r1, #0x40
	strh r1, [r0]
	strh r1, [r0, #2]
	movs r0, #1
	str r0, [r3]
_08081F3E:
	adds r0, r2, #0
	adds r0, #0x94
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08081F84 @ =gUnknown_080D0D28
	adds r1, r1, r0
	ldr r0, [r1, #0x6c]
	lsls r0, r0, #2
	ldr r1, _08081F80 @ =gUnknown_02002530
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08081F7C: .4byte gUnknown_0200253C
_08081F80: .4byte gUnknown_02002530
_08081F84: .4byte gUnknown_080D0D28

	thumb_func_start sub_08081F88
sub_08081F88: @ 0x08081F88
	movs r0, #0x10
	bx lr

	thumb_func_start sub_08081F8C
sub_08081F8C: @ 0x08081F8C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	adds r0, #0x9c
	movs r1, #0
	bl sub_0806D540
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	movs r2, #0x1f
	ands r2, r0
	movs r3, #0xf8
	lsls r3, r3, #2
	ands r3, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	ands r0, r1
	lsls r2, r2, #3
	strb r2, [r5]
	lsrs r3, r3, #2
	strb r3, [r5, #1]
	lsrs r0, r0, #7
	strb r0, [r5, #2]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08081FC8
sub_08081FC8: @ 0x08081FC8
	push {r4, lr}
	lsls r2, r2, #1
	adds r1, #0xa8
	adds r1, r1, r2
	ldrh r1, [r1]
	movs r3, #0x1f
	ands r3, r1
	movs r4, #0xf8
	lsls r4, r4, #2
	ands r4, r1
	movs r2, #0xf8
	lsls r2, r2, #7
	ands r1, r2
	lsls r3, r3, #3
	strb r3, [r0]
	lsrs r4, r4, #2
	strb r4, [r0, #1]
	lsrs r1, r1, #7
	strb r1, [r0, #2]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08081FF4
sub_08081FF4: @ 0x08081FF4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806D8EC
	ldr r0, _0808201C @ =0x09F83418
	str r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x98
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	adds r0, #0x9c
	bl sub_0806D478
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0808201C: .4byte 0x09F83418

	thumb_func_start sub_08082020
sub_08082020: @ 0x08082020
	ldr r0, _08082024 @ =gUnknown_02002940
	bx lr
	.align 2, 0
_08082024: .4byte gUnknown_02002940

	thumb_func_start sub_08082028
sub_08082028: @ 0x08082028
	push {lr}
	bl sub_08082020
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082034
sub_08082034: @ 0x08082034
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E274
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08082044
sub_08082044: @ 0x08082044
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_08077F34
	ldr r0, _0808206C @ =0x09F83548
	str r0, [r5, #0x1c]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08082070 @ =gUnknown_080D9D28
	adds r0, r0, r1
	str r0, [r5, #0x48]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0808206C: .4byte 0x09F83548
_08082070: .4byte gUnknown_080D9D28

	thumb_func_start sub_08082074
sub_08082074: @ 0x08082074
	push {lr}
	ldr r2, _08082084 @ =0x09F83548
	str r2, [r0, #0x1c]
	bl sub_080781E0
	pop {r0}
	bx r0
	.align 2, 0
_08082084: .4byte 0x09F83548

	thumb_func_start sub_08082088
sub_08082088: @ 0x08082088
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xd8
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r5, #0x48]
	ldrh r1, [r1, #2]
	cmp r0, r1
	blt _080820C6
	adds r0, r5, #0
	bl sub_08078410
	b _0808212A
_080820C6:
	ldr r2, [r5, #0x1c]
	movs r0, #0x8e
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r1, _08082134 @ =0x0000FF02
	mov r0, sp
	bl sub_0806E34C
	ldr r3, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, _08082138 @ =0x000003FF
	add r4, sp, #0xc
	adds r0, r4, #0
	ldr r3, [r3, #4]
	adds r1, r5, r1
	bl _call_via_r3
	mov r0, sp
	adds r1, r4, #0
	bl sub_0806E374
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	add r1, sp, #0x18
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r0, sp
	movs r2, #1
	bl sub_080735E0
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	movs r0, #0
_0808212A:
	add sp, #0x1c
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08082134: .4byte 0x0000FF02
_08082138: .4byte 0x000003FF

	thumb_func_start sub_0808213C
sub_0808213C: @ 0x0808213C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	bl sub_080786DC
	ldr r1, [r4, #0x1c]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, [r4, #0x1c]
	movs r6, #0xb0
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r8, r0
	ldr r0, [r4, #0x1c]
	adds r0, r0, r6
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r2, r0, #0
	adds r0, r5, #0
	mov r1, r8
	bl sub_080730FC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080821A0
sub_080821A0: @ 0x080821A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	bl sub_08073CF0
	adds r0, r4, #0
	bl nullsub_28
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080821E4
sub_080821E4: @ 0x080821E4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080821F8
sub_080821F8: @ 0x080821F8
	ldr r0, [r0, #0x48]
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082200
sub_08082200: @ 0x08082200
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
	bl sub_08082034
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082230
sub_08082230: @ 0x08082230
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806E274
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08082240
sub_08082240: @ 0x08082240
	movs r0, #0
	bx lr

	thumb_func_start sub_08082244
sub_08082244: @ 0x08082244
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808224C
sub_0808224C: @ 0x0808224C
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082254
sub_08082254: @ 0x08082254
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808225C
sub_0808225C: @ 0x0808225C
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082264
sub_08082264: @ 0x08082264
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x16]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808226C
sub_0808226C: @ 0x0808226C
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x18]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082274
sub_08082274: @ 0x08082274
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x1a]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808227C
sub_0808227C: @ 0x0808227C
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x1b]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082284
sub_08082284: @ 0x08082284
	push {lr}
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _08082290
	movs r0, #1
_08082290:
	pop {r1}
	bx r1

	thumb_func_start sub_08082294
sub_08082294: @ 0x08082294
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x20]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808229C
sub_0808229C: @ 0x0808229C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r3, [r1, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r3, r3, r0
	movs r0, #0
	ldrsh r4, [r3, r0]
	ldr r0, [r1, #0x48]
	ldrh r2, [r0, #0x24]
	adds r0, r5, #0
	ldr r3, [r3, #4]
	adds r1, r1, r4
	bl _call_via_r3
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080822C4
sub_080822C4: @ 0x080822C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0x48]
	ldrh r1, [r0, #0x24]
	adds r0, r4, #0
	bl sub_08073444
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080822DC
sub_080822DC: @ 0x080822DC
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _080822EA
	movs r0, #1
_080822EA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080822F0
sub_080822F0: @ 0x080822F0
	ldr r0, [r0, #0x48]
	adds r0, #0x27
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_080822F8
sub_080822F8: @ 0x080822F8
	ldr r0, [r0, #0x48]
	adds r0, #0x28
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08082300
sub_08082300: @ 0x08082300
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
	beq _0808233A
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
	b _0808233C
_0808233A:
	movs r0, #0
_0808233C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082344
sub_08082344: @ 0x08082344
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #0x2a]
	bx lr
	.align 2, 0

	thumb_func_start sub_0808234C
sub_0808234C: @ 0x0808234C
	ldr r0, [r0, #0x48]
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0x64
	subs r0, r0, r1
	bx lr

	thumb_func_start sub_08082358
sub_08082358: @ 0x08082358
	ldr r0, [r0, #0x48]
	adds r0, #0x2d
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08082360
sub_08082360: @ 0x08082360
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808236E
	movs r0, #1
_0808236E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08082374
sub_08082374: @ 0x08082374
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x48]
	movs r3, #6
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080823B0
	ldr r1, [r2, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080823BA
_080823B0:
	cmp r0, #0
	bgt _080823B8
	movs r0, #0
	b _080823BA
_080823B8:
	ldrh r0, [r1, #6]
_080823BA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080823C0
sub_080823C0: @ 0x080823C0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	ldrh r1, [r0, #6]
	movs r3, #6
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _080823FA
	ldr r1, [r2, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08082404
_080823FA:
	cmp r0, #0
	bgt _08082402
	movs r0, #0
	b _08082408
_08082402:
	adds r0, r1, #1
_08082404:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08082408:
	pop {r1}
	bx r1

	thumb_func_start sub_0808240C
sub_0808240C: @ 0x0808240C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	ldrh r1, [r0, #6]
	movs r3, #6
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _08082446
	ldr r1, [r2, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0x86
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _08082450
_08082446:
	cmp r0, #0
	bgt _0808244E
	movs r0, #0
	b _08082454
_0808244E:
	adds r0, r1, #2
_08082450:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08082454:
	pop {r1}
	bx r1

	thumb_func_start sub_08082458
sub_08082458: @ 0x08082458
	ldr r0, [r0, #0x48]
	ldrh r0, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082460
sub_08082460: @ 0x08082460
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_08082468
sub_08082468: @ 0x08082468
	push {r4, lr}
	ldr r4, _0808247C @ =gUnknown_02002940
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08082480 @ =0x09F837F8
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808247C: .4byte gUnknown_02002940
_08082480: .4byte 0x09F837F8
