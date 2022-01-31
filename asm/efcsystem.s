.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806EDF0
sub_0806EDF0: @ 0x0806EDF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	bl sub_080894BC
	ldr r0, _0806EE80 @ =vt_09F80168
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x3c
	ldr r1, _0806EE84 @ =0x00000141
	movs r2, #0
	movs r3, #1
	rsbs r3, r3, #0
_0806EE0C:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, r3
	bne _0806EE0C
	movs r4, #0
	strh r6, [r5, #0x2c]
	bl sub_0806EC08
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	str r0, [r5, #0x30]
	ldrh r1, [r0, #8]
	strh r1, [r5, #0x34]
	ldrh r0, [r0, #0xa]
	strh r0, [r5, #0x36]
	strh r4, [r5, #0x38]
	movs r6, #0
_0806EE40:
	ldr r0, [r5, #0x30]
	lsls r4, r6, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0
	beq _0806EE62
	ldr r0, _0806EE88 @ =0x000004AC
	bl __builtin_new
	ldr r1, [r5, #0x30]
	adds r1, r1, r4
	ldrh r2, [r1]
	lsls r3, r6, #0x10
	lsrs r3, r3, #0x10
	adds r1, r5, #0
	bl sub_0806F030
_0806EE62:
	adds r6, #1
	cmp r6, #1
	ble _0806EE40
	bl get__10IrcManager
	ldr r1, _0806EE8C @ =gUnknown_0810056C
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r5, #0
	bl sub_08069A50__3IrcUiG5Intr2
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806EE80: .4byte vt_09F80168
_0806EE84: .4byte 0x00000141
_0806EE88: .4byte 0x000004AC
_0806EE8C: .4byte gUnknown_0810056C

	thumb_func_start sub_0806EE90
sub_0806EE90: @ 0x0806EE90
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0806EF04 @ =vt_09F80168
	str r0, [r6, #0x1c]
	bl get__10IrcManager
	ldr r1, _0806EF08 @ =gUnknown_0810056C
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r6, #0
	bl sub_08069C84__3IrcUiG5Intr2
	ldr r1, _0806EF0C @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0806EF10 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0806EF14 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r0, r6, #0
	bl sub_0808959C
	adds r4, r0, #0
	cmp r4, #0
	beq _0806EEF6
_0806EECA:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r4, #0
	beq _0806EEF0
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806EEF0:
	adds r4, r5, #0
	cmp r4, #0
	bne _0806EECA
_0806EEF6:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080894DC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806EF04: .4byte vt_09F80168
_0806EF08: .4byte gUnknown_0810056C
_0806EF0C: .4byte 0x040000B0
_0806EF10: .4byte 0x0000C5FF
_0806EF14: .4byte 0x00007FFF

	thumb_func_start sub_0806EF18
sub_0806EF18: @ 0x0806EF18
	strh r1, [r0, #0x34]
	bx lr

	thumb_func_start sub_0806EF1C
sub_0806EF1C: @ 0x0806EF1C
	strh r1, [r0, #0x36]
	bx lr

	thumb_func_start sub_0806EF20
sub_0806EF20: @ 0x0806EF20
	ldrh r0, [r0, #0x2c]
	bx lr

	thumb_func_start sub_0806EF24
sub_0806EF24: @ 0x0806EF24
	ldrh r0, [r0, #0x34]
	bx lr

	thumb_func_start sub_0806EF28
sub_0806EF28: @ 0x0806EF28
	ldrh r0, [r0, #0x36]
	bx lr

	thumb_func_start sub_0806EF2C
sub_0806EF2C: @ 0x0806EF2C
	adds r0, #0x3c
	bx lr

	thumb_func_start sub_0806EF30
sub_0806EF30: @ 0x0806EF30
	adds r0, #0x3c
	bx lr

	thumb_func_start sub_0806EF34
sub_0806EF34: @ 0x0806EF34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_0806A9A4
	adds r4, r0, #0
	movs r1, #1
	bl sub_0806AB98
	adds r0, r4, #0
	movs r1, #4
	bl sub_0806AB9C
	adds r0, r4, #0
	movs r1, #8
	bl sub_0806ABA0
	ldr r0, [r7, #0x30]
	ldrh r1, [r0, #4]
	adds r0, r4, #0
	bl sub_0806ABA4
	ldr r0, [r7, #0x30]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	bl sub_0806ABA8
	adds r0, r4, #0
	movs r1, #0x33
	bl sub_0806ABB4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0806ABC0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x3f
	bl sub_0806ABCC
	ldrh r3, [r7, #0x34]
	mov r2, sp
	movs r1, #0x78
	rsbs r1, r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r3, [r2, #2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806ABD8
	ldrh r1, [r7, #0x36]
	ldrh r0, [r7, #0x34]
	subs r1, r1, r0
	add r2, sp, #4
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r2]
	strh r1, [r2, #2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806ABE4
	bl sub_0806B070
	mov r8, r0
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0x3c
	movs r5, #0x80
	lsls r5, r5, #0xa
_0806EFC8:
	lsrs r1, r5, #0x10
	mov r0, r8
	adds r2, r4, #0
	bl sub_0806BAB8
	adds r4, #4
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #1
	ble _0806EFC8
	movs r3, #0
	ldr r1, _0806F018 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0806F01C @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0806F020 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0806F024 @ =0x040000BA
	strh r3, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	str r0, [r1]
	ldr r0, _0806F028 @ =0x04000018
	str r0, [r1, #4]
	ldr r0, _0806F02C @ =0xA6600002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F018: .4byte 0x040000B0
_0806F01C: .4byte 0x0000C5FF
_0806F020: .4byte 0x00007FFF
_0806F024: .4byte 0x040000BA
_0806F028: .4byte 0x04000018
_0806F02C: .4byte 0xA6600002

	thumb_func_start sub_0806F030
sub_0806F030: @ 0x0806F030
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_080894BC
	ldr r0, _0806F178 @ =vt_09F80238
	str r0, [r7, #0x1c]
	movs r0, #0x34
	adds r0, r0, r7
	mov sb, r0
	bl sub_0806D64C
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	bl _call_via_r2
	bl sub_0806EC08
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	strh r5, [r7, #0x2c]
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	str r0, [r7, #0x30]
	adds r0, r7, #0
	adds r0, #0xa0
	mov r1, r8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	adds r0, #0x74
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa8
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0xaa
	strh r0, [r1]
	adds r0, r7, #0
	bl sub_0806F1EC
	ldr r3, [r4, #0x1c]
	adds r3, #0x98
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0, #2]
	add r0, sp, #4
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	ldr r3, [r4, #0x1c]
	adds r3, #0x98
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r7, #0x30]
	ldrh r2, [r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r3, [r3, #4]
	adds r1, r4, r1
	bl _call_via_r3
	add r2, sp, #0x1c
	ldr r0, [r7, #0x30]
	adds r0, #4
	movs r1, #0x40
	ldr r4, _0806F17C @ =_vt.1D
	str r4, [sp, #0x24]
	str r0, [sp, #0x1c]
	str r1, [r2, #4]
	adds r5, #2
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r2, [sp]
	mov r0, sb
	adds r1, r5, #0
	add r2, sp, #4
	adds r3, r6, #0
	bl sub_0806D744
	str r4, [sp, #0x24]
	str r4, [sp, #0x18]
	str r4, [sp, #0xc]
	add r1, sp, #0x28
	mov r2, r8
	strh r2, [r1]
	strh r2, [r1, #2]
	mov r0, sb
	bl sub_0806D814
	add r1, sp, #0x2c
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r0, sb
	bl sub_0806D828
	add r1, sp, #0x30
	mov r0, r8
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r0, sb
	bl sub_0806D83C
	movs r5, #0x44
	movs r4, #3
_0806F14A:
	movs r0, #0x34
	bl __builtin_new
	ldr r2, [r7, #0x30]
	adds r2, r2, r5
	adds r1, r7, #0
	bl sub_0806F56C
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bge _0806F14A
	ldr r0, [r7, #0x30]
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #1
	beq _0806F180
	cmp r0, #1
	ble _0806F1A2
	cmp r0, #2
	beq _0806F192
	b _0806F1A2
	.align 2, 0
_0806F178: .4byte vt_09F80238
_0806F17C: .4byte _vt.1D
_0806F180:
	movs r0, #0x38
	bl __builtin_new
	ldr r2, [r7, #0x30]
	adds r2, #0x88
	adds r1, r7, #0
	bl sub_0806F97C
	b _0806F1A2
_0806F192:
	movs r0, #0x38
	bl __builtin_new
	ldr r2, [r7, #0x30]
	adds r2, #0x88
	adds r1, r7, #0
	bl sub_0806F7EC
_0806F1A2:
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0806F1E0 @ =_vt.3Unk
	ldr r0, _0806F1E4 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0806F1E8 @ =gUnknown_081006B4
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x34
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806F1E0: .4byte _vt.3Unk
_0806F1E4: .4byte _vt.8AppClock
_0806F1E8: .4byte gUnknown_081006B4

	thumb_func_start sub_0806F1EC
sub_0806F1EC: @ 0x0806F1EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	movs r6, #0
	ldr r0, _0806F268 @ =gUnknown_081006BC
	mov r8, r0
	movs r5, #0xab
	lsls r5, r5, #2
	add r5, ip
_0806F200:
	lsls r3, r6, #1
	mov r0, ip
	adds r0, #0xac
	adds r4, r0, r3
	mov r2, ip
	ldr r1, [r2, #0x30]
	adds r0, r1, #0
	adds r0, #0x7c
	movs r7, #0
	ldrsh r2, [r0, r7]
	ldr r0, [r1, #0x78]
	lsls r0, r0, #9
	adds r0, r3, r0
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _0806F228
	adds r0, #0xff
_0806F228:
	asrs r0, r0, #8
	adds r0, #8
	strh r0, [r4]
	mov r2, ip
	ldr r0, [r2, #0x30]
	adds r1, r0, #0
	adds r1, #0x7e
	movs r7, #0
	ldrsh r1, [r1, r7]
	ldr r0, [r0, #0x78]
	lsls r0, r0, #9
	adds r0, r3, r0
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _0806F24E
	adds r0, #0xff
_0806F24E:
	asrs r0, r0, #8
	adds r0, #0x30
	strh r0, [r5]
	adds r5, #2
	adds r6, #1
	cmp r6, #0xff
	ble _0806F200
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F268: .4byte gUnknown_081006BC

	thumb_func_start sub_0806F26C
sub_0806F26C: @ 0x0806F26C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0806F2C8 @ =vt_09F80238
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_0808959C
	adds r4, r0, #0
	cmp r4, #0
	beq _0806F2AE
_0806F282:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r4, #0
	beq _0806F2A8
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806F2A8:
	adds r4, r5, #0
	cmp r4, #0
	bne _0806F282
_0806F2AE:
	adds r0, r6, #0
	adds r0, #0x34
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080894DC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F2C8: .4byte vt_09F80238

	thumb_func_start sub_0806F2CC
sub_0806F2CC: @ 0x0806F2CC
	adds r0, #0xa0
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2D4
sub_0806F2D4: @ 0x0806F2D4
	adds r0, #0xa2
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2DC
sub_0806F2DC: @ 0x0806F2DC
	adds r0, #0xa4
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2E4
sub_0806F2E4: @ 0x0806F2E4
	adds r0, #0xa6
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2EC
sub_0806F2EC: @ 0x0806F2EC
	adds r0, #0xa8
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2F4
sub_0806F2F4: @ 0x0806F2F4
	adds r0, #0xaa
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806F2FC
sub_0806F2FC: @ 0x0806F2FC
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F304
sub_0806F304: @ 0x0806F304
	adds r0, #0xa2
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F30C
sub_0806F30C: @ 0x0806F30C
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F314
sub_0806F314: @ 0x0806F314
	adds r0, #0xa6
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F31C
sub_0806F31C: @ 0x0806F31C
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F324
sub_0806F324: @ 0x0806F324
	adds r0, #0xaa
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_0806F32C
sub_0806F32C: @ 0x0806F32C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806B070
	ldrh r1, [r4, #0x2c]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r5, #0
	bl sub_0806BA20
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806F34C
sub_0806F34C: @ 0x0806F34C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	bl sub_0806B070
	ldrh r1, [r4, #0x2c]
	adds r1, #2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r5, [sp]
	adds r2, r6, #0
	mov r3, r8
	bl sub_0806B9C0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F380
sub_0806F380: @ 0x0806F380
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x78
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	adds r0, #0xc0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	adds r4, r0, #0
	ldrh r0, [r7, #0x2c]
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806F42C
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0806F52C
	adds r1, r7, #0
	adds r1, #0xa0
	ldr r0, [r7, #0x30]
	adds r0, #0x84
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r7, #0x30]
	adds r0, #0x86
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r0, r7, #0
	adds r0, #0xa8
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r0, r7, #0
	adds r0, #0xaa
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806F42C
sub_0806F42C: @ 0x0806F42C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r6, r1, #0
	mov r8, r2
	str r3, [sp, #8]
	adds r0, #0xa4
	movs r1, #0
	ldrsh r4, [r0, r1]
	asrs r4, r4, #8
	bl sub_0806B070
	adds r1, r0, #0
	mov r0, sp
	bl sub_0806BAEC
	ldr r5, [sp]
	adds r5, r5, r4
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r0, sl
	adds r0, #0xa6
	movs r1, #0
	ldrsh r4, [r0, r1]
	asrs r4, r4, #8
	bl sub_0806B070
	adds r1, r0, #0
	add r0, sp, #4
	bl sub_0806BAEC
	ldr r2, [sp, #4]
	asrs r2, r2, #0x10
	adds r2, r2, r4
	mov r1, sl
	ldr r0, [r1, #0x30]
	adds r1, r0, #0
	adds r1, #0x80
	ldrb r1, [r1]
	mov sb, r1
	adds r0, #0x82
	ldrb r0, [r0]
	mov ip, r0
	mov r0, sl
	adds r0, #0xa0
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #8
	adds r0, r0, r6
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, sl
	adds r0, #0xa2
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #8
	adds r0, r0, r6
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, sb
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r1, ip
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x18
	mov ip, r0
	movs r0, #1
	add r8, r0
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	str r5, [sp, #0xc]
	movs r5, #0xab
	lsls r5, r5, #2
	add r5, sl
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	lsls r0, r6, #3
	ldr r1, [sp, #8]
	adds r3, r0, r1
	b _0806F510
_0806F4E2:
	lsls r1, r7, #1
	mov r0, sl
	adds r0, #0xac
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	strh r0, [r3]
	lsls r0, r4, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	subs r0, r0, r2
	strh r0, [r3, #2]
	mov r1, sb
	adds r0, r7, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, ip
	adds r0, r4, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r3, #0x10
	adds r6, #2
_0806F510:
	movs r0, #0xa0
	cmp r0, r8
	ble _0806F518
	mov r0, r8
_0806F518:
	cmp r6, r0
	blt _0806F4E2
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806F52C
sub_0806F52C: @ 0x0806F52C
	push {r4, lr}
	adds r4, r2, #0
	adds r2, r1, #1
	cmp r2, r4
	bge _0806F558
	lsls r0, r2, #3
	subs r0, #8
	adds r3, r0, r3
_0806F53C:
	ldrh r0, [r3]
	ldrh r1, [r3, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r3, #8]
	ldrh r0, [r3, #2]
	ldrh r1, [r3, #0x12]
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r3, #0xa]
	adds r3, #0x10
	adds r2, #2
	cmp r2, r4
	blt _0806F53C
_0806F558:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F560
sub_0806F560: @ 0x0806F560
	push {lr}
	bl sub_08089580
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806F56C
sub_0806F56C: @ 0x0806F56C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080894BC
	ldr r0, _0806F5DC @ =vt_09F80340
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	str r6, [r5, #0x2c]
	movs r0, #0
	strh r0, [r5, #0x30]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806F5E0 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0806F5E4 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0806F5E8 @ =gUnknown_081017FC
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
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
_0806F5DC: .4byte vt_09F80340
_0806F5E0: .4byte _vt.3Unk
_0806F5E4: .4byte _vt.8AppClock
_0806F5E8: .4byte gUnknown_081017FC

	thumb_func_start sub_0806F5EC
sub_0806F5EC: @ 0x0806F5EC
	push {lr}
	ldr r2, _0806F5FC @ =vt_09F80340
	str r2, [r0, #0x1c]
	bl sub_080894DC
	pop {r0}
	bx r0
	.align 2, 0
_0806F5FC: .4byte vt_09F80340

	thumb_func_start sub_0806F600
sub_0806F600: @ 0x0806F600
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r3, [r5, #0x2c]
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _0806F6C0
	ldrh r0, [r5, #0x30]
	cmp r0, #0
	bne _0806F6C0
	ldrh r1, [r3, #6]
	ldrh r2, [r3, #4]
	subs r0, r2, #1
	subs r4, r1, r0
	ldr r0, [r3]
	cmp r0, #2
	beq _0806F63C
	cmp r0, #2
	bgt _0806F62C
	cmp r0, #1
	beq _0806F636
	b _0806F6C0
_0806F62C:
	cmp r0, #3
	beq _0806F644
	cmp r0, #4
	beq _0806F67A
	b _0806F6C0
_0806F636:
	adds r0, r5, #0
	adds r1, r2, #0
	b _0806F6A4
_0806F63C:
	subs r3, r4, #1
	adds r0, r5, #0
	adds r1, r2, #0
	b _0806F672
_0806F644:
	ldrh r0, [r5, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	cmp r1, #0
	beq _0806F652
	bl sub_08090F7C
_0806F652:
	adds r2, r0, #0
	lsls r1, r4, #1
	cmp r1, #0
	beq _0806F662
	adds r0, r2, #0
	bl sub_08090F80
	adds r2, r0, #0
_0806F662:
	cmp r2, r4
	blt _0806F69E
	cmp r2, r4
	ble _0806F6C0
	ldr r0, [r5, #0x2c]
	ldrh r1, [r0, #4]
	subs r3, r4, #1
	adds r0, r5, #0
_0806F672:
	adds r2, r4, #0
	bl sub_0806F6E0
	b _0806F6C0
_0806F67A:
	ldrh r0, [r5, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	cmp r1, #0
	beq _0806F688
	bl sub_08090F7C
_0806F688:
	adds r2, r0, #0
	lsls r0, r4, #1
	adds r1, r0, #1
	cmp r1, #0
	beq _0806F69A
	adds r0, r2, #0
	bl sub_08090F80
	adds r2, r0, #0
_0806F69A:
	cmp r2, r4
	bge _0806F6AE
_0806F69E:
	ldr r0, [r5, #0x2c]
	ldrh r1, [r0, #4]
	adds r0, r5, #0
_0806F6A4:
	adds r2, r4, #0
	movs r3, #1
	bl sub_0806F6E0
	b _0806F6C0
_0806F6AE:
	cmp r2, r4
	ble _0806F6C0
	ldr r0, [r5, #0x2c]
	ldrh r1, [r0, #4]
	subs r3, r4, #1
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_0806F6E0
_0806F6C0:
	ldrh r0, [r5, #0x30]
	adds r0, #1
	strh r0, [r5, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r5, #0x2c]
	movs r2, #8
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _0806F6D8
	movs r0, #0
	strh r0, [r5, #0x30]
_0806F6D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806F6E0
sub_0806F6E0: @ 0x0806F6E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	adds r1, #0xf8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r3, r0, #0
	ldr r0, _0806F7C4 @ =gUnknown_02001EC0
	mov sl, r0
	ldr r4, _0806F7C8 @ =0x040000D4
	str r3, [r4]
	str r0, [r4, #4]
	ldr r0, _0806F7CC @ =0x80000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, r8
	lsls r7, r1, #1
	adds r0, r7, r3
	ldr r2, _0806F7D0 @ =gUnknown_02001E80
	mov ip, r2
	lsls r2, r5, #1
	cmp r2, #0
	ble _0806F748
	str r0, [r4]
	mov r0, ip
	str r0, [r4, #4]
	asrs r0, r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0806F748:
	subs r6, r6, r5
	mov r1, r8
	adds r0, r1, r5
	lsls r0, r0, #1
	adds r3, r0, r3
	mov r0, sl
	adds r1, r7, r0
	lsls r0, r6, #1
	cmp r0, #0
	ble _0806F76C
	str r3, [r4]
	str r1, [r4, #4]
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0806F76C:
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #1
	add r0, sl
	cmp r2, #0
	ble _0806F78A
	mov r3, ip
	str r3, [r4]
	str r0, [r4, #4]
	asrs r0, r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0806F78A:
	mov r0, sb
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r4, [r1, #4]
	movs r1, #0
	movs r2, #2
	mov r3, sl
	bl _call_via_r4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F7C4: .4byte gUnknown_02001EC0
_0806F7C8: .4byte 0x040000D4
_0806F7CC: .4byte 0x80000020
_0806F7D0: .4byte gUnknown_02001E80

	thumb_func_start sub_0806F7D4
sub_0806F7D4: @ 0x0806F7D4
	push {lr}
	bl sub_08089594
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806F7E0
sub_0806F7E0: @ 0x0806F7E0
	push {lr}
	bl sub_08089580
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806F7EC
sub_0806F7EC: @ 0x0806F7EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080894BC
	ldr r0, _0806F888 @ =vt_09F803D8
	str r0, [r5, #0x1c]
	movs r0, #0
	strh r0, [r5, #0x34]
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	str r6, [r5, #0x2c]
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	strh r0, [r5, #0x30]
	ldr r0, [r4, #0x1c]
	adds r0, #0xf0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl _call_via_r1
	strh r0, [r5, #0x32]
	ldr r0, _0806F88C @ =0xFFFF0000
	ands r7, r0
	str r7, [r5, #0x34]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806F890 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0806F894 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0806F898 @ =gUnknown_08101944
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806F888: .4byte vt_09F803D8
_0806F88C: .4byte 0xFFFF0000
_0806F890: .4byte _vt.3Unk
_0806F894: .4byte _vt.8AppClock
_0806F898: .4byte gUnknown_08101944

	thumb_func_start sub_0806F89C
sub_0806F89C: @ 0x0806F89C
	push {lr}
	ldr r2, _0806F8AC @ =vt_09F803D8
	str r2, [r0, #0x1c]
	bl sub_080894DC
	pop {r0}
	bx r0
	.align 2, 0
_0806F8AC: .4byte vt_09F803D8

	thumb_func_start sub_0806F8B0
sub_0806F8B0: @ 0x0806F8B0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x30
	ldrsh r2, [r5, r0]
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0806F8C2
	adds r0, #0x1f
_0806F8C2:
	ldr r7, _0806F968 @ =gUnknown_080EF880
	asrs r0, r0, #5
	ldr r4, _0806F96C @ =0x000003FF
	ands r0, r4
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_08069594
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x32
	ldrsh r2, [r5, r0]
	movs r1, #0x34
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0806F8F2
	adds r0, #0x1f
_0806F8F2:
	asrs r0, r0, #5
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_08069594
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5, #0x2c]
	ldrh r0, [r0, #4]
	ldrh r2, [r5, #0x34]
	adds r0, r0, r2
	strh r0, [r5, #0x34]
	ldr r1, [r5, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0xb8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r5, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F968: .4byte gUnknown_080EF880
_0806F96C: .4byte 0x000003FF

	thumb_func_start sub_0806F970
sub_0806F970: @ 0x0806F970
	push {lr}
	bl sub_08089594
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806F97C
sub_0806F97C: @ 0x0806F97C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl sub_080894BC
	ldr r0, _0806F9F0 @ =vt_09F80470
	str r0, [r5, #0x1c]
	ldr r0, [r4, #0x1c]
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r4, r1
	ldr r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	str r6, [r5, #0x2c]
	movs r0, #0
	strh r0, [r5, #0x30]
	strh r0, [r5, #0x32]
	strh r0, [r5, #0x34]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806F9F4 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0806F9F8 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0806F9FC @ =gUnknown_08101A8C
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BaseP4BaseRC4BaseG9ClockData
	mov r2, r8
	str r2, [sp, #0x20]
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
_0806F9F0: .4byte vt_09F80470
_0806F9F4: .4byte _vt.3Unk
_0806F9F8: .4byte _vt.8AppClock
_0806F9FC: .4byte gUnknown_08101A8C

	thumb_func_start sub_0806FA00
sub_0806FA00: @ 0x0806FA00
	push {lr}
	ldr r2, _0806FA10 @ =vt_09F80470
	str r2, [r0, #0x1c]
	bl sub_080894DC
	pop {r0}
	bx r0
	.align 2, 0
_0806FA10: .4byte vt_09F80470

	thumb_func_start sub_0806FA14
sub_0806FA14: @ 0x0806FA14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r0, sb
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r7, #0x34]
	subs r0, #1
	strh r0, [r7, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806FB0A
	ldr r5, _0806FB5C @ =0x000003FF
	movs r0, #0
	adds r1, r5, #0
	bl sub_0805D234
	adds r4, r0, #0
	ldr r3, [sp]
	lsls r6, r3, #0x10
	asrs r6, r6, #0x10
	ldr r0, _0806FB60 @ =gUnknown_080EF880
	mov r8, r0
	ands r4, r5
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_08069594
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #2
	add r4, r8
	ldr r1, [r4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_08069594
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, [r7, #0x2c]
	ldrh r0, [r1, #6]
	ldrh r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x34]
	movs r0, #0
	movs r1, #0xff
	bl sub_0805D234
	ldrh r1, [r7, #0x34]
	muls r0, r1, r0
	strh r0, [r7, #0x34]
	movs r3, #0x34
	ldrsh r0, [r7, r3]
	ldr r1, [r7, #0x2c]
	asrs r0, r0, #8
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	strh r0, [r7, #0x34]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r0, r5, r6
	ldrh r1, [r7, #0x34]
	cmp r1, #0
	beq _0806FAF0
	bl sub_08090F7C
_0806FAF0:
	strh r0, [r7, #0x30]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	ldrh r1, [r7, #0x34]
	cmp r1, #0
	beq _0806FB08
	bl sub_08090F7C
_0806FB08:
	strh r0, [r7, #0x32]
_0806FB0A:
	mov r3, sb
	ldr r2, [r3, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sb
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r7, #0x30]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	mov r0, sb
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	movs r1, #0
	ldrsh r0, [r2, r1]
	add r0, sb
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r7, [r7, #0x32]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FB5C: .4byte 0x000003FF
_0806FB60: .4byte gUnknown_080EF880

	thumb_func_start sub_0806FB64
sub_0806FB64: @ 0x0806FB64
	push {lr}
	bl sub_08089594
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FB70
sub_0806FB70: @ 0x0806FB70
	ldr r0, _0806FB74 @ =gUnknown_02001F00
	bx lr
	.align 2, 0
_0806FB74: .4byte gUnknown_02001F00

	thumb_func_start sub_0806FB78
sub_0806FB78: @ 0x0806FB78
	push {r4, lr}
	ldr r1, _0806FBA0 @ =gUnknown_02001F0C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806FB94
	ldr r4, _0806FBA4 @ =gUnknown_02001F10
	movs r0, #0x40
	bl __builtin_new
	bl sub_0806FBFC
	str r0, [r4]
_0806FB94:
	ldr r0, _0806FBA4 @ =gUnknown_02001F10
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FBA0: .4byte gUnknown_02001F0C
_0806FBA4: .4byte gUnknown_02001F10

	thumb_func_start sub_0806FBA8
sub_0806FBA8: @ 0x0806FBA8
	ldr r0, _0806FBB0 @ =gUnknown_02001F10
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806FBB0: .4byte gUnknown_02001F10

	thumb_func_start sub_0806FBB4
sub_0806FBB4: @ 0x0806FBB4
	push {r4, r5, lr}
	ldr r1, _0806FBE8 @ =gUnknown_02001F0C
	ldr r0, [r1]
	cmp r0, #0
	ble _0806FBE0
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806FBE0
	ldr r5, _0806FBEC @ =gUnknown_02001F10
	ldr r2, [r5]
	cmp r2, #0
	beq _0806FBDE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806FBDE:
	str r4, [r5]
_0806FBE0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FBE8: .4byte gUnknown_02001F0C
_0806FBEC: .4byte gUnknown_02001F10

	thumb_func_start sub_0806FBF0
sub_0806FBF0: @ 0x0806FBF0
	push {lr}
	bl sub_0806FB70
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FBFC
sub_0806FBFC: @ 0x0806FBFC
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0806FC24 @ =vt_09F80508
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x20
	bl sub_0805D2A4
	movs r0, #0
	strh r0, [r4, #0x28]
	strh r0, [r4, #0x30]
	strh r0, [r4, #0x38]
	bl sub_0806B040
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FC24: .4byte vt_09F80508

	thumb_func_start sub_0806FC28
sub_0806FC28: @ 0x0806FC28
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806FC50 @ =vt_09F80508
	str r0, [r4, #0x1c]
	bl sub_0806B07C
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #2
	bl sub_0805D2B4
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FC50: .4byte vt_09F80508

	thumb_func_start sub_0806FC54
sub_0806FC54: @ 0x0806FC54
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r0, #0x20
	bl sub_0805D2D4
	ldr r5, [r5]
	ldrh r0, [r5, #4]
	strh r0, [r4, #0x28]
	adds r0, r5, #0
	adds r0, #0xc
	str r0, [r4, #0x2c]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0x30]
	ldr r2, [r4, #0x1c]
	adds r2, #0x88
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x28]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r0, [r4, #0x34]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x38]
	ldr r2, [r4, #0x1c]
	adds r2, #0x98
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x30]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r0, [r4, #0x3c]
	ldr r2, [r4, #0x1c]
	adds r2, #0xa8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x38]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r0]
	ldr r0, _0806FCBC @ =0x6366657E
	cmp r1, r0
	bne _0806FCC0
	movs r0, #1
	b _0806FCC2
	.align 2, 0
_0806FCBC: .4byte 0x6366657E
_0806FCC0:
	movs r0, #0
_0806FCC2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806FCC8
sub_0806FCC8: @ 0x0806FCC8
	push {lr}
	adds r0, #0x20
	bl sub_0805D2DC
	pop {r1}
	bx r1

	thumb_func_start sub_0806FCD4
sub_0806FCD4: @ 0x0806FCD4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, #0x20
	bl sub_0805D2F0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FCE8
sub_0806FCE8: @ 0x0806FCE8
	ldrh r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0806FCEC
sub_0806FCEC: @ 0x0806FCEC
	push {lr}
	ldr r2, [r0, #0x2c]
	cmp r1, #0
	ble _0806FD08
_0806FCF4:
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x12
	movs r3, #0x80
	lsls r3, r3, #0xc
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	adds r2, r2, r0
	subs r1, #1
	cmp r1, #0
	bne _0806FCF4
_0806FD08:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FD10
sub_0806FD10: @ 0x0806FD10
	ldrh r0, [r0, #0x30]
	bx lr

	thumb_func_start sub_0806FD14
sub_0806FD14: @ 0x0806FD14
	lsls r1, r1, #3
	ldr r0, [r0, #0x34]
	adds r0, r0, r1
	bx lr

	thumb_func_start sub_0806FD1C
sub_0806FD1C: @ 0x0806FD1C
	ldrh r0, [r0, #0x38]
	bx lr

	thumb_func_start sub_0806FD20
sub_0806FD20: @ 0x0806FD20
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r0, #0x3c]
	movs r2, #0
	cmp r2, r5
	bge _0806FD52
_0806FD2C:
	adds r3, r1, #0
	adds r3, #0x10
	ldrh r0, [r1, #0xa]
	adds r4, r2, #1
	cmp r0, #0
	beq _0806FD44
	adds r2, r0, #0
_0806FD3A:
	ldrh r0, [r3]
	adds r3, r3, r0
	subs r2, #1
	cmp r2, #0
	bne _0806FD3A
_0806FD44:
	subs r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r1, r0
	adds r2, r4, #0
	cmp r2, r5
	blt _0806FD2C
_0806FD52:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806FD5C
sub_0806FD5C: @ 0x0806FD5C
	push {r4, lr}
	ldr r4, _0806FD70 @ =gUnknown_02001F00
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806FD74 @ =vt_09F805B8
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806FD70: .4byte gUnknown_02001F00
_0806FD74: .4byte vt_09F805B8
