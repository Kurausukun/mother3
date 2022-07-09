.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806BDDC
sub_0806BDDC: @ 0x0806BDDC
	ldr r0, _0806BDE0 @ =gUnknown_02001CF4
	bx lr
	.align 2, 0
_0806BDE0: .4byte gUnknown_02001CF4

	thumb_func_start sub_0806BDE4
sub_0806BDE4: @ 0x0806BDE4
	push {r4, lr}
	ldr r1, _0806BE0C @ =gUnknown_02001D00
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806BE02
	ldr r4, _0806BE10 @ =gUnknown_02001D04
	movs r0, #0xb5
	lsls r0, r0, #4
	bl __builtin_new
	bl sub_0806BE68
	str r0, [r4]
_0806BE02:
	ldr r0, _0806BE10 @ =gUnknown_02001D04
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806BE0C: .4byte gUnknown_02001D00
_0806BE10: .4byte gUnknown_02001D04

	thumb_func_start sub_0806BE14
sub_0806BE14: @ 0x0806BE14
	ldr r0, _0806BE1C @ =gUnknown_02001D04
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806BE1C: .4byte gUnknown_02001D04

	thumb_func_start sub_0806BE20
sub_0806BE20: @ 0x0806BE20
	push {r4, r5, lr}
	ldr r1, _0806BE54 @ =gUnknown_02001D00
	ldr r0, [r1]
	cmp r0, #0
	ble _0806BE4C
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806BE4C
	ldr r5, _0806BE58 @ =gUnknown_02001D04
	ldr r2, [r5]
	cmp r2, #0
	beq _0806BE4A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806BE4A:
	str r4, [r5]
_0806BE4C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806BE54: .4byte gUnknown_02001D00
_0806BE58: .4byte gUnknown_02001D04

	thumb_func_start sub_0806BE5C
sub_0806BE5C: @ 0x0806BE5C
	push {lr}
	bl sub_0806BDDC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806BE68
sub_0806BE68: @ 0x0806BE68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0806BF40 @ =vt_09F7F030
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #3
	movs r4, #0
	movs r3, #0x81
	lsls r3, r3, #2
	movs r2, #1
	rsbs r2, r2, #0
_0806BE86:
	str r4, [r0]
	adds r0, r0, r3
	subs r1, #1
	cmp r1, r2
	bne _0806BE86
	movs r1, #0x83
	lsls r1, r1, #4
	adds r0, r7, r1
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _0806BF44 @ =0x00000834
	adds r0, r7, r2
	str r1, [r0]
	ldr r2, _0806BF48 @ =0x00000938
	adds r0, r7, r2
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	adds r2, #0x10
	adds r0, r7, r2
	str r1, [r0]
	subs r2, #4
	adds r0, r7, r2
	strh r1, [r0]
	ldr r2, _0806BF4C @ =0x00000B4C
	adds r0, r7, r2
	str r1, [r0]
	bl sub_0806A974
	adds r4, r0, #0
	ldr r1, _0806BF50 @ =0x0000EF9F
	bl sub_0806AFA4
	movs r1, #0x82
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_0806AF58
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806BF54 @ =_vt.3Unk
	ldr r0, _0806BF58 @ =_vt.8SysClock
	str r0, [sp, #0x20]
	ldr r0, _0806BF5C @ =gUnknown_080FF3FC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806BF60 @ =_vt.12PostSysClock
	str r0, [sp, #0x20]
	ldr r0, _0806BF64 @ =gUnknown_080FF404
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_0806C428
	bl sub_0806C77C
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806BF40: .4byte vt_09F7F030
_0806BF44: .4byte 0x00000834
_0806BF48: .4byte 0x00000938
_0806BF4C: .4byte 0x00000B4C
_0806BF50: .4byte 0x0000EF9F
_0806BF54: .4byte _vt.3Unk
_0806BF58: .4byte _vt.8SysClock
_0806BF5C: .4byte gUnknown_080FF3FC
_0806BF60: .4byte _vt.12PostSysClock
_0806BF64: .4byte gUnknown_080FF404

	thumb_func_start sub_0806BF68
sub_0806BF68: @ 0x0806BF68
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806BFA4 @ =vt_09F7F030
	str r0, [r4, #0x1c]
	bl sub_0806C7B8
	bl sub_0806C464
	bl sub_0806A9A4
	ldr r1, _0806BFA8 @ =0x0000EF9F
	bl sub_0806AFA4
	bl sub_0806A9B0
	ldr r1, _0806BFAC @ =0x00000938
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0806BF96
	bl __builtin_vec_delete
_0806BF96:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806BFA4: .4byte vt_09F7F030
_0806BFA8: .4byte 0x0000EF9F
_0806BFAC: .4byte 0x00000938

	thumb_func_start sub_0806BFB0
sub_0806BFB0: @ 0x0806BFB0
	push {r4, lr}
	adds r4, r0, #0
	asrs r1, r1, #1
	lsls r3, r1, #7
	adds r3, r3, r1
	lsls r3, r3, #2
	adds r0, r3, r4
	ldr r0, [r0, #0x20]
	adds r3, r3, r4
	adds r2, r0, r2
	str r2, [r3, #0x20]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806BFCC
sub_0806BFCC: @ 0x0806BFCC
	push {r4, r5, r6, lr}
	adds r6, r3, #0
	asrs r1, r1, #1
	lsls r3, r1, #7
	adds r3, r3, r1
	lsls r3, r3, #2
	adds r1, r3, r0
	ldr r5, [r1, #0x20]
	adds r4, r1, #0
	adds r1, r5, r2
	str r1, [r4, #0x20]
	adds r3, r4, #0
	adds r3, #0x20
	lsls r0, r5, #3
	adds r0, #4
	adds r3, r3, r0
	lsls r0, r2, #3
	cmp r0, #0
	ble _0806C004
	ldr r2, _0806C00C @ =0x040000D4
	str r6, [r2]
	str r3, [r2, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C004:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806C00C: .4byte 0x040000D4

	thumb_func_start sub_0806C010
sub_0806C010: @ 0x0806C010
	adds r3, r0, #0
	asrs r1, r1, #1
	lsls r0, r1, #7
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, #0x20
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	bx lr
	.align 2, 0

	thumb_func_start sub_0806C028
sub_0806C028: @ 0x0806C028
	movs r2, #0x83
	lsls r2, r2, #4
	adds r0, r0, r2
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0806C034
sub_0806C034: @ 0x0806C034
	movs r2, #0x83
	lsls r2, r2, #4
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0]
	bx lr

	thumb_func_start sub_0806C040
sub_0806C040: @ 0x0806C040
	ldr r2, _0806C050 @ =0x00000834
	adds r0, r0, r2
	ldr r2, [r0]
	adds r1, r2, r1
	str r1, [r0]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_0806C050: .4byte 0x00000834

	thumb_func_start sub_0806C054
sub_0806C054: @ 0x0806C054
	push {r4, r5, lr}
	adds r5, r2, #0
	ldr r2, _0806C088 @ =0x00000834
	adds r0, r0, r2
	ldr r3, [r0]
	adds r2, r3, #1
	str r2, [r0]
	lsls r2, r3, #3
	adds r2, #4
	adds r4, r0, r2
	lsls r0, r1, #3
	cmp r0, #0
	ble _0806C080
	ldr r2, _0806C08C @ =0x040000D4
	str r5, [r2]
	str r4, [r2, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C080:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806C088: .4byte 0x00000834
_0806C08C: .4byte 0x040000D4

	thumb_func_start sub_0806C090
sub_0806C090: @ 0x0806C090
	ldr r2, _0806C09C @ =0x00000834
	adds r0, r0, r2
	lsls r1, r1, #3
	adds r1, #4
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0806C09C: .4byte 0x00000834

	thumb_func_start sub_0806C0A0
sub_0806C0A0: @ 0x0806C0A0
	ldr r2, _0806C0B0 @ =0x00000944
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r1, r2, r1
	strh r1, [r0]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_0806C0B0: .4byte 0x00000944

	thumb_func_start sub_0806C0B4
sub_0806C0B4: @ 0x0806C0B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0806C148 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	str r2, [sp, #4]
	ldr r4, _0806C14C @ =0x00000938
	add r4, r8
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _0806C118
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0806C0EA
	adds r0, r1, #0
_0806C0EA:
	adds r5, r0, #0
	lsls r0, r5, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r6, [r4, #8]
	adds r3, r7, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0806C10A
	adds r2, r0, #0
_0806C100:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0806C100
_0806C10A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806C114
	bl __builtin_vec_delete
_0806C114:
	str r5, [r4]
	str r7, [r4, #8]
_0806C118:
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	lsls r2, r3, #3
	adds r2, r2, r0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r3, #1
	str r3, [r4, #4]
	ldr r2, _0806C150 @ =0x00000944
	add r2, r8
	ldrh r0, [r2]
	mov r3, sb
	adds r1, r0, r3
	strh r1, [r2]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806C148: .4byte 0xFFFF0000
_0806C14C: .4byte 0x00000938
_0806C150: .4byte 0x00000944

	thumb_func_start sub_0806C154
sub_0806C154: @ 0x0806C154
	lsls r0, r1, #5
	ldr r1, _0806C15C @ =0x06010000
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0806C15C: .4byte 0x06010000

	thumb_func_start sub_0806C160
sub_0806C160: @ 0x0806C160
	ldr r2, _0806C170 @ =0x00000948
	adds r0, r0, r2
	ldr r2, [r0]
	adds r1, r2, r1
	str r1, [r0]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_0806C170: .4byte 0x00000948

	thumb_func_start sub_0806C174
sub_0806C174: @ 0x0806C174
	push {r4, r5, lr}
	adds r5, r2, #0
	ldr r2, _0806C1A8 @ =0x00000948
	adds r0, r0, r2
	ldr r3, [r0]
	adds r2, r3, r1
	str r2, [r0]
	lsls r2, r3, #5
	adds r2, #4
	adds r4, r0, r2
	lsls r0, r1, #5
	cmp r0, #0
	ble _0806C1A0
	ldr r2, _0806C1AC @ =0x040000D4
	str r5, [r2]
	str r4, [r2, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C1A0:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806C1A8: .4byte 0x00000948
_0806C1AC: .4byte 0x040000D4

	thumb_func_start sub_0806C1B0
sub_0806C1B0: @ 0x0806C1B0
	ldr r2, _0806C1BC @ =0x00000948
	adds r0, r0, r2
	lsls r1, r1, #5
	adds r1, #4
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0806C1BC: .4byte 0x00000948

	thumb_func_start sub_0806C1C0
sub_0806C1C0: @ 0x0806C1C0
	ldr r2, _0806C1C8 @ =0x00000B4C
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0806C1C8: .4byte 0x00000B4C

	thumb_func_start sub_0806C1CC
sub_0806C1CC: @ 0x0806C1CC
	ldr r1, _0806C1D4 @ =0x00000B4C
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806C1D4: .4byte 0x00000B4C

	thumb_func_start sub_0806C1D8
sub_0806C1D8: @ 0x0806C1D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r6, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [sp, #8]
	movs r1, #0
	mov r8, r1
	movs r2, #0x83
	lsls r2, r2, #4
	adds r2, r6, r2
	str r2, [sp, #0xc]
_0806C1F8:
	ldr r3, [sp, #0xc]
	ldr r0, [r3]
	mov r5, r8
	lsls r5, r5, #7
	mov sl, r5
	mov r7, r8
	adds r7, #1
	str r7, [sp, #0x14]
	ldr r1, _0806C3A8 @ =0x0000094C
	adds r1, r6, r1
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _0806C278
	movs r2, #0
	mov ip, r2
	mov r0, sl
	add r0, r8
	lsls r3, r0, #2
	adds r0, r3, r6
	ldr r0, [r0, #0x20]
	cmp ip, r0
	bge _0806C278
	adds r1, r3, r6
	movs r5, #0x83
	lsls r5, r5, #4
	adds r5, r5, r6
	mov sb, r5
	adds r0, r1, #0
	adds r3, r0, #0
	adds r3, #0x20
	str r3, [sp, #0x18]
	adds r4, r0, #0
	adds r4, #0x24
	adds r3, r1, #0
	adds r3, #0x26
	ldr r7, _0806C3AC @ =0x00000832
	adds r7, r6, r7
	str r7, [sp, #0x1c]
_0806C244:
	ldrh r2, [r3]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x17
	mov r5, sb
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r1, r1, r0
	ldr r0, _0806C3B0 @ =0x000001FF
	ands r1, r0
	ldr r0, _0806C3B4 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
	ldrb r2, [r4]
	adds r0, r0, r2
	strb r0, [r4]
	adds r4, #8
	adds r3, #8
	movs r5, #1
	add ip, r5
	ldr r7, [sp, #0x18]
	ldr r0, [r7]
	cmp ip, r0
	blt _0806C244
_0806C278:
	mov r0, sl
	add r0, r8
	lsls r2, r0, #2
	adds r0, r2, r6
	adds r1, r0, #0
	adds r1, #0x24
	ldr r0, [r0, #0x20]
	lsls r0, r0, #3
	cmp r0, #0
	ble _0806C2A0
	ldr r3, _0806C3B8 @ =0x040000D4
	str r1, [r3]
	ldr r5, [sp, #8]
	str r5, [r3, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0806C2A0:
	adds r0, r2, r6
	ldr r0, [r0, #0x20]
	lsls r0, r0, #3
	ldr r7, [sp, #8]
	adds r7, r7, r0
	str r7, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r8, r0
	cmp r0, #3
	ble _0806C1F8
	ldr r0, _0806C3BC @ =0x07000400
	subs r1, r0, r7
	cmp r1, #0
	ble _0806C2D6
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #4]
	ldr r2, _0806C3B8 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	str r7, [r2, #4]
	asrs r0, r1, #2
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C2D6:
	movs r3, #0
	adds r0, r6, #0
	adds r0, #0x20
	movs r2, #0x81
	lsls r2, r2, #2
	movs r1, #3
_0806C2E2:
	str r3, [r0]
	adds r0, r0, r2
	subs r1, #1
	cmp r1, #0
	bge _0806C2E2
	movs r2, #0xe0
	lsls r2, r2, #0x13
	ldr r1, _0806C3C0 @ =0x00000834
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _0806C31A
	ldr r3, _0806C3C4 @ =0x00000838
	adds r1, r6, r3
	adds r3, r0, #0
_0806C300:
	ldrh r0, [r1]
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	strh r0, [r2, #0xe]
	ldrh r0, [r1, #4]
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #6]
	strh r0, [r2, #0x1e]
	adds r2, #0x20
	adds r1, #8
	subs r3, #1
	cmp r3, #0
	bne _0806C300
_0806C31A:
	ldr r5, _0806C3C0 @ =0x00000834
	adds r0, r6, r5
	movs r1, #0
	str r1, [r0]
	ldr r7, _0806C3C8 @ =0x06010000
	movs r4, #0
	ldr r0, _0806C3CC @ =0x00000938
	adds r1, r6, r0
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _0806C364
	adds r5, r1, #0
	ldr r3, _0806C3B8 @ =0x040000D4
	ldr r2, [r5, #8]
	movs r1, #0x84
	lsls r1, r1, #0x18
	mov r8, r1
_0806C33C:
	ldrh r0, [r2]
	ldr r1, [r2, #4]
	lsls r0, r0, #5
	cmp r0, #0
	ble _0806C354
	str r1, [r3]
	str r7, [r3, #4]
	asrs r0, r0, #2
	mov r1, r8
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0806C354:
	ldrh r0, [r2]
	lsls r0, r0, #5
	adds r7, r7, r0
	adds r2, #8
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0806C33C
_0806C364:
	ldr r2, _0806C3CC @ =0x00000938
	adds r0, r6, r2
	movs r4, #0
	str r4, [r0, #4]
	ldr r3, _0806C3D0 @ =0x00000944
	adds r0, r6, r3
	strh r4, [r0]
	ldr r5, _0806C3D4 @ =0x00000948
	adds r3, r6, r5
	ldr r0, [r3]
	lsls r1, r0, #5
	cmp r1, #0
	ble _0806C394
	ldr r2, _0806C3B8 @ =0x040000D4
	ldr r7, [sp, #0x10]
	str r7, [r2]
	ldr r0, _0806C3D8 @ =0x05000200
	str r0, [r2, #4]
	asrs r0, r1, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C394:
	str r4, [r3]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C3A8: .4byte 0x0000094C
_0806C3AC: .4byte 0x00000832
_0806C3B0: .4byte 0x000001FF
_0806C3B4: .4byte 0xFFFFFE00
_0806C3B8: .4byte 0x040000D4
_0806C3BC: .4byte 0x07000400
_0806C3C0: .4byte 0x00000834
_0806C3C4: .4byte 0x00000838
_0806C3C8: .4byte 0x06010000
_0806C3CC: .4byte 0x00000938
_0806C3D0: .4byte 0x00000944
_0806C3D4: .4byte 0x00000948
_0806C3D8: .4byte 0x05000200

	thumb_func_start sub_0806C3DC
sub_0806C3DC: @ 0x0806C3DC
	push {lr}
	adds r3, r0, #0
	ldr r1, _0806C3FC @ =0x00000B4C
	adds r0, r3, r1
	ldr r0, [r0]
	ldr r2, _0806C400 @ =0x00000948
	adds r1, r3, r2
	ldr r1, [r1]
	lsls r1, r1, #4
	adds r2, #4
	adds r3, r3, r2
	adds r2, r3, #0
	bl sub_0806A67C__11BattleFaderiPUsT2
	pop {r0}
	bx r0
	.align 2, 0
_0806C3FC: .4byte 0x00000B4C
_0806C400: .4byte 0x00000948

	thumb_func_start sub_0806C404
sub_0806C404: @ 0x0806C404
	push {r4, lr}
	ldr r4, _0806C418 @ =gUnknown_02001CF4
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806C41C @ =vt_09F7F098
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C418: .4byte gUnknown_02001CF4
_0806C41C: .4byte vt_09F7F098
