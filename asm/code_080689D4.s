.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start _._4Base
_._4Base: @ 0x080689D4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08068A3C @ =0x09F7EAA8
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl sub_08069084
	adds r0, r6, #0
	bl sub_08068FC4
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _080689F4
	bl sub_0805D3F4
_080689F4:
	adds r5, r6, #4
	movs r0, #0
	str r0, [r5, #4]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _08068A26
	subs r0, r1, #4
	ldr r0, [r0]
	lsls r0, r0, #4
	adds r4, r1, r0
	cmp r1, r4
	beq _08068A1E
_08068A0C:
	subs r4, #0x10
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08068A18
	bl sub_0805D3F4
_08068A18:
	ldr r0, [r5, #8]
	cmp r0, r4
	bne _08068A0C
_08068A1E:
	ldr r0, [r5, #8]
	subs r0, #4
	bl sub_0805D3F4
_08068A26:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08068A34
	adds r0, r6, #0
	bl __builtin_delete
_08068A34:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068A3C: .4byte 0x09F7EAA8

	thumb_func_start sub_08068A40
sub_08068A40: @ 0x08068A40
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bgt _08068A5E
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _08068A66
_08068A5E:
	ldrh r1, [r2, #2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #2]
_08068A66:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08068A6C
sub_08068A6C: @ 0x08068A6C
	movs r0, #0
	bx lr

	thumb_func_start nullsub_47
nullsub_47: @ 0x08068A70
	bx lr
	.align 2, 0

	thumb_func_start sub_08068A74
sub_08068A74: @ 0x08068A74
	movs r0, #0
	bx lr

	thumb_func_start nullsub_48
nullsub_48: @ 0x08068A78
	bx lr
	.align 2, 0

	thumb_func_start nullsub_49
nullsub_49: @ 0x08068A7C
	bx lr
	.align 2, 0

	thumb_func_start sub_08068A80
sub_08068A80: @ 0x08068A80
	sub sp, #4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x18]
	adds r5, r1, #0
	adds r4, r2, #0
	str r3, [sp, #0x4c]
	ldr r6, [sp, #0x4c]
	ldr r7, [sp, #0x50]
	cmp r5, #0
	bne _08068AA0
	b _08068D82
_08068AA0:
	asrs r0, r6, #0x10
	cmp r0, #0
	bne _08068AA8
	b _08068D82
_08068AA8:
	movs r0, #0x14
	bl __builtin_new
	str r0, [sp, #0x14]
	str r5, [r0]
	ldr r1, [r4, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	ldr r1, [sp, #0x14]
	str r0, [r1, #4]
	ldr r3, [sp, #0x18]
	str r3, [r1, #8]
	str r6, [r1, #0xc]
	str r7, [r1, #0x10]
	ldr r1, [r4, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	str r0, [sp, #0x10]
	adds r7, r5, #4
	add r5, sp, #0x10
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x1c]
	movs r1, #0
	ldr r2, [r7, #4]
	ldr r3, [sp, #0x18]
	adds r3, #0x10
	str r3, [sp, #0x24]
	cmp r1, r2
	bge _08068B08
	adds r4, r0, #0
	adds r3, r2, #0
	ldr r2, [r7, #8]
_08068AFA:
	ldr r0, [r2]
	cmp r0, r4
	beq _08068B6E
	adds r2, #0x10
	adds r1, #1
	cmp r1, r3
	blt _08068AFA
_08068B08:
	ldr r1, [r7, #4]
	adds r2, r1, #0
_08068B0C:
	cmp r1, r2
	bge _08068B72
	lsls r1, r1, #4
	ldr r0, [r7, #8]
	adds r0, r0, r1
	adds r4, r0, #4
	ldr r1, [r4, #4]
	adds r5, r1, #1
	ldr r0, [r0, #4]
	cmp r0, r5
	bge _08068B5A
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08068B2C
	adds r0, r1, #0
_08068B2C:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl sub_0805D3C8
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08068B4C
	adds r1, r0, #0
_08068B42:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08068B42
_08068B4C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08068B56
	bl sub_0805D3F4
_08068B56:
	str r5, [r4]
	str r6, [r4, #8]
_08068B5A:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r3, [sp, #0x1c]
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	b _08068D2A
_08068B6E:
	ldr r2, [r7, #4]
	b _08068B0C
_08068B72:
	add r1, sp, #4
	movs r0, #0
	str r0, [sp, #4]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r5]
	str r0, [sp]
	mov r0, sp
	str r0, [sp, #0x20]
	adds r2, #1
	mov r8, r2
	ldr r0, [r7]
	cmp r0, r8
	bge _08068C6A
	lsls r1, r2, #1
	movs r0, #4
	cmp r0, r1
	bge _08068B98
	adds r0, r1, #0
_08068B98:
	mov r8, r0
	lsls r0, r0, #4
	adds r0, #4
	bl sub_0805D3C8
	mov r1, r8
	stm r0!, {r1}
	adds r4, r0, #0
	adds r1, r4, #0
	mov r2, r8
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08068BCA
	movs r3, #0
	adds r5, r0, #0
_08068BBA:
	adds r0, r1, #4
	str r3, [r1, #4]
	str r3, [r0, #4]
	str r3, [r0, #8]
	adds r1, #0x10
	subs r2, #1
	cmp r2, r5
	bne _08068BBA
_08068BCA:
	mov sl, r4
	ldr r0, [r7, #8]
	ldr r2, [r7, #4]
	mov sb, r2
	movs r1, #0
	cmp r1, sb
	bge _08068C36
	subs r4, #0x10
	adds r5, r0, #0
	subs r5, #0x10
_08068BDE:
	adds r5, #0x10
	adds r4, #0x10
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08068BF4
	str r1, [sp, #0x28]
	bl sub_0805D3F4
	ldr r1, [sp, #0x28]
_08068BF4:
	ldr r0, [r5, #8]
	cmp r0, #0
	bgt _08068C06
	movs r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	adds r2, r1, #1
	b _08068C30
_08068C06:
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	lsls r0, r0, #2
	str r1, [sp, #0x28]
	bl sub_0805D3C8
	str r0, [r4, #0xc]
	ldr r6, [r5, #0xc]
	adds r3, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x28]
	adds r2, r1, #1
	cmp r0, #0
	ble _08068C30
	adds r1, r0, #0
_08068C26:
	ldm r6!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08068C26
_08068C30:
	adds r1, r2, #0
	cmp r1, sb
	blt _08068BDE
_08068C36:
	ldr r1, [r7, #8]
	cmp r1, #0
	beq _08068C62
	subs r0, r1, #4
	ldr r0, [r0]
	lsls r0, r0, #4
	adds r4, r1, r0
	cmp r1, r4
	beq _08068C5A
_08068C48:
	subs r4, #0x10
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08068C54
	bl sub_0805D3F4
_08068C54:
	ldr r0, [r7, #8]
	cmp r0, r4
	bne _08068C48
_08068C5A:
	ldr r0, [r7, #8]
	subs r0, #4
	bl sub_0805D3F4
_08068C62:
	mov r3, r8
	str r3, [r7]
	mov r0, sl
	str r0, [r7, #8]
_08068C6A:
	ldr r0, [r7, #4]
	lsls r2, r0, #4
	ldr r1, [r7, #8]
	adds r6, r2, r1
	adds r0, #1
	str r0, [r7, #4]
	ldr r1, [sp, #0x20]
	ldm r1!, {r0}
	str r1, [sp, #0x20]
	adds r4, r6, #0
	stm r4!, {r0}
	ldr r5, [sp, #0x20]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08068C8C
	bl sub_0805D3F4
_08068C8C:
	ldr r0, [r5, #4]
	cmp r0, #0
	bgt _08068C9C
	movs r0, #0
	str r0, [r6, #4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	b _08068CC0
_08068C9C:
	str r0, [r6, #4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	lsls r0, r0, #2
	bl sub_0805D3C8
	str r0, [r4, #8]
	ldr r3, [r5, #8]
	adds r2, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08068CC0
	adds r1, r0, #0
_08068CB6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08068CB6
_08068CC0:
	ldr r0, [r7, #4]
	subs r0, #1
	lsls r0, r0, #4
	ldr r1, [r7, #8]
	adds r1, r1, r0
	adds r4, r1, #4
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r1, #4]
	cmp r0, r5
	bge _08068D0E
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08068CE0
	adds r0, r1, #0
_08068CE0:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl sub_0805D3C8
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08068D00
	adds r1, r0, #0
_08068CF6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08068CF6
_08068D00:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08068D0A
	bl sub_0805D3F4
_08068D0A:
	str r5, [r4]
	str r6, [r4, #8]
_08068D0E:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r3, [sp, #0x1c]
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08068D2A
	bl sub_0805D3F4
_08068D2A:
	ldr r4, [sp, #0x24]
	add r7, sp, #0x14
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #0x10]
	cmp r0, r5
	bge _08068D72
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08068D44
	adds r0, r1, #0
_08068D44:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl sub_0805D3C8
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08068D64
	adds r1, r0, #0
_08068D5A:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08068D5A
_08068D64:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08068D6E
	bl sub_0805D3F4
_08068D6E:
	str r5, [r4]
	str r6, [r4, #8]
_08068D72:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_08068D82:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #4
	bx r3

	thumb_func_start sub_08068D94
sub_08068D94: @ 0x08068D94
	push {lr}
	bl sub_08069084
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08068DA0
sub_08068DA0: @ 0x08068DA0
	sub sp, #4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	str r3, [sp, #0x24]
	cmp r4, #0
	beq _08068E8E
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08068E8E
	movs r0, #0
	mov sb, r0
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r0, #4]
	adds r7, r0, #0
	cmp sb, r1
	bge _08068E8E
	movs r3, #0
	mov r8, r3
_08068DD4:
	ldr r0, [r7, #8]
	add r0, r8
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, r4
	bne _08068E80
	str r1, [sp, #4]
	ldr r1, [r2, #0x1c]
	movs r6, #0x10
	ldrsh r0, [r1, r6]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	str r0, [sp]
	adds r1, r4, #4
	movs r3, #0
	ldr r2, [r1, #4]
	add r4, sp, #4
	mov ip, r4
	cmp r3, r2
	bge _08068E16
	adds r5, r0, #0
	adds r4, r2, #0
	ldr r1, [r1, #8]
_08068E06:
	adds r2, r1, #0
	ldr r0, [r2]
	cmp r0, r5
	beq _08068E7C
	adds r1, #0x10
	adds r3, #1
	cmp r3, r4
	blt _08068E06
_08068E16:
	movs r0, #0
_08068E18:
	movs r3, #0
	ldr r2, [r0, #4]
	ldr r6, [r0, #8]
	cmp r3, r2
	bge _08068E38
	mov r0, ip
	ldr r5, [r0]
	adds r4, r2, #0
	adds r1, r6, #0
_08068E2A:
	ldr r0, [r1]
	cmp r0, r5
	beq _08068E78
	adds r1, #4
	adds r3, #1
	cmp r3, r4
	blt _08068E2A
_08068E38:
	adds r0, r2, #0
_08068E3A:
	lsls r0, r0, #2
	adds r0, r6, r0
	movs r1, #0
	str r1, [r0]
	adds r5, r7, #0
	ldr r3, [r7, #4]
	cmp sb, r3
	bge _08068E70
	ldr r2, [r7, #8]
	mov r4, r8
	adds r1, r4, r2
	mov r0, sb
	adds r0, #1
	subs r0, r3, r0
	adds r4, r1, #4
	mov r6, r8
	adds r1, r6, r2
	cmp r0, #0
	ble _08068E6C
	adds r2, r0, #0
_08068E62:
	ldm r4!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08068E62
_08068E6C:
	subs r0, r3, #1
	str r0, [r5, #4]
_08068E70:
	ldr r0, [sp, #4]
	bl __builtin_delete
	b _08068E8E
_08068E78:
	adds r0, r3, #0
	b _08068E3A
_08068E7C:
	adds r0, r1, #4
	b _08068E18
_08068E80:
	movs r0, #4
	add r8, r0
	movs r3, #1
	add sb, r3
	ldr r0, [r7, #4]
	cmp sb, r0
	blt _08068DD4
_08068E8E:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_08068EA0
sub_08068EA0: @ 0x08068EA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov sl, r1
	ldr r1, [r1, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	add r0, sl
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r3, r0, #0
	str r3, [sp]
	mov r0, sb
	adds r0, #4
	movs r2, #0
	ldr r1, [r0, #4]
	cmp r2, r1
	bge _08068EE8
	adds r4, r3, #0
	adds r3, r1, #0
	ldr r1, [r0, #8]
_08068ED4:
	ldr r0, [r1]
	cmp r0, r4
	bne _08068EE0
	adds r1, #4
	mov r8, r1
	b _08068EEC
_08068EE0:
	adds r1, #0x10
	adds r2, #1
	cmp r2, r3
	blt _08068ED4
_08068EE8:
	movs r3, #0
	mov r8, r3
_08068EEC:
	mov r0, r8
	cmp r0, #0
	beq _08068FB4
	ldr r7, [r0, #4]
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r5, #0
	cmp r5, r7
	bge _08068F8C
_08068F02:
	lsls r1, r5, #2
	mov r2, r8
	ldr r0, [r2, #8]
	adds r2, r0, r1
	ldr r3, [r2]
	cmp r3, #0
	beq _08068F58
	movs r0, #0xe
	ldrsh r4, [r3, r0]
	cmp r4, #0
	ble _08068F36
	movs r1, #0x10
	ldrsh r0, [r3, r1]
	ldr r2, [r3, #8]
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r0, r4, #3
	adds r0, r0, r1
	adds r6, r0, #0
	subs r6, #8
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r6, [sp, #8]
	b _08068F3A
_08068F36:
	ldr r6, [r3, #0x10]
	ldr r2, [r3, #8]
_08068F3A:
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	cmp r4, #0
	ble _08068F4C
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	b _08068F4E
_08068F4C:
	adds r0, r1, #0
_08068F4E:
	adds r0, r2, r0
	mov r1, sl
	bl sub_0809194C
	b _08068F86
_08068F58:
	mov r0, r8
	ldr r3, [r0, #4]
	subs r1, r5, #1
	mov ip, r1
	subs r6, r7, #1
	cmp r5, r3
	bge _08068F82
	adds r0, r5, #1
	subs r0, r3, r0
	adds r4, r2, #4
	cmp r0, #0
	ble _08068F7C
	adds r1, r0, #0
_08068F72:
	ldm r4!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08068F72
_08068F7C:
	subs r0, r3, #1
	mov r2, r8
	str r0, [r2, #4]
_08068F82:
	mov r5, ip
	adds r7, r6, #0
_08068F86:
	adds r5, #1
	cmp r5, r7
	blt _08068F02
_08068F8C:
	mov r3, sb
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08068FB4
	ldrh r1, [r3, #2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08068FB4
	ldr r1, [r3, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	add r0, sb
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08068FB4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08068FC4
sub_08068FC4: @ 0x08068FC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	movs r3, #0
	adds r1, r0, #0
	adds r1, #4
	ldr r0, [r1, #4]
	cmp r3, r0
	bge _0806906E
	mov sl, r1
_08068FE0:
	lsls r0, r3, #4
	mov r2, sl
	ldr r1, [r2, #8]
	adds r1, r1, r0
	adds r1, #4
	mov r8, r1
	movs r2, #0
	ldr r0, [r1, #4]
	adds r3, #1
	str r3, [sp, #8]
	cmp r2, r0
	bge _08069064
_08068FF8:
	lsls r1, r2, #2
	mov r3, r8
	ldr r0, [r3, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	adds r2, #1
	mov sb, r2
	cmp r0, #0
	beq _0806905A
	ldr r0, [r0, #8]
	adds r6, r0, #0
	adds r6, #0x10
	mov r7, sp
	movs r5, #0
	ldr r2, [r6, #4]
	cmp r5, r2
	bge _08069054
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r3, r0, #0
_08069022:
	ldr r1, [r3]
	ldr r0, [r7]
	cmp r1, r0
	bne _08069048
	adds r0, r5, #1
	subs r0, r2, r0
	adds r1, r3, #0
	ldr r3, [r6, #4]
	cmp r0, #0
	ble _08069042
	adds r2, r0, #0
_08069038:
	ldm r4!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08069038
_08069042:
	subs r0, r3, #1
	str r0, [r6, #4]
	b _08069054
_08069048:
	adds r4, #4
	adds r3, #4
	adds r5, #1
	ldr r2, [r6, #4]
	cmp r5, r2
	blt _08069022
_08069054:
	ldr r0, [sp]
	bl __builtin_delete
_0806905A:
	mov r2, sb
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r2, r0
	blt _08068FF8
_08069064:
	ldr r3, [sp, #8]
	mov r2, sl
	ldr r0, [r2, #4]
	cmp r3, r0
	blt _08068FE0
_0806906E:
	movs r0, #0
	ldr r3, [sp, #4]
	str r0, [r3, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08069084
sub_08069084: @ 0x08069084
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	movs r4, #0
	mov r1, sb
	adds r1, #0x10
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _0806910E
	mov r8, r1
_0806909E:
	lsls r0, r4, #2
	mov r2, r8
	ldr r1, [r2, #8]
	adds r1, r1, r0
	ldr r1, [r1]
	str r1, [sp]
	ldr r0, [r1]
	adds r0, #4
	movs r3, #0
	ldr r2, [r0, #4]
	adds r7, r4, #1
	cmp r3, r2
	bge _080690D0
	ldr r4, [r1, #4]
	adds r1, r2, #0
	ldr r2, [r0, #8]
_080690BE:
	ldr r0, [r2]
	cmp r0, r4
	bne _080690C8
	adds r0, r2, #4
	b _080690D2
_080690C8:
	adds r2, #0x10
	adds r3, #1
	cmp r3, r1
	blt _080690BE
_080690D0:
	movs r0, #0
_080690D2:
	movs r2, #0
	ldr r3, [r0, #4]
	ldr r6, [r0, #8]
	cmp r2, r3
	bge _080690F4
	ldr r5, [sp]
	adds r4, r3, #0
	adds r1, r6, #0
_080690E2:
	ldr r0, [r1]
	cmp r0, r5
	bne _080690EC
	adds r0, r2, #0
	b _080690F6
_080690EC:
	adds r1, #4
	adds r2, #1
	cmp r2, r4
	blt _080690E2
_080690F4:
	adds r0, r3, #0
_080690F6:
	lsls r0, r0, #2
	adds r0, r6, r0
	movs r1, #0
	str r1, [r0]
	ldr r0, [sp]
	bl __builtin_delete
	adds r4, r7, #0
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r4, r0
	blt _0806909E
_0806910E:
	movs r0, #0
	mov r2, sb
	str r0, [r2, #0x14]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08069124
sub_08069124: @ 0x08069124
	push {r4, r5, r6, r7, lr}
	movs r1, #0
	adds r2, r0, #4
	ldr r0, [r2, #4]
	cmp r1, r0
	bge _08069188
	adds r7, r2, #0
	ldr r0, [r7, #8]
	mov ip, r0
_08069136:
	lsls r0, r1, #4
	add r0, ip
	adds r4, r0, #4
	movs r3, #0
	ldr r0, [r4, #4]
	adds r6, r1, #1
	cmp r3, r0
	bge _08069180
_08069146:
	lsls r0, r3, #2
	ldr r1, [r4, #8]
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08069178
	ldr r2, [r4, #4]
	subs r5, r3, #1
	cmp r3, r2
	bge _08069176
	adds r0, r3, #1
	subs r0, r2, r0
	adds r3, r1, #4
	cmp r0, #0
	ble _08069170
	adds r2, r0, #0
_08069166:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08069166
_08069170:
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
_08069176:
	adds r3, r5, #0
_08069178:
	adds r3, #1
	ldr r0, [r4, #4]
	cmp r3, r0
	blt _08069146
_08069180:
	adds r1, r6, #0
	ldr r0, [r7, #4]
	cmp r1, r0
	blt _08069136
_08069188:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08069190
sub_08069190: @ 0x08069190
	ldr r1, _0806919C @ =0x54442D11
	ldr r0, _08069198 @ =0x400921FB
	bx lr
	.align 2, 0
_08069198: .4byte 0x400921FB
_0806919C: .4byte 0x54442D11

	thumb_func_start sub_080691A0
sub_080691A0: @ 0x080691A0
	ldr r1, _080691AC @ =0x54442D11
	ldr r0, _080691A8 @ =0x3FF921FB
	bx lr
	.align 2, 0
_080691A8: .4byte 0x3FF921FB
_080691AC: .4byte 0x54442D11

	thumb_func_start sub_080691B0
sub_080691B0: @ 0x080691B0
	ldr r1, _080691BC @ =0x54442D11
	ldr r0, _080691B8 @ =0x3FE921FB
	bx lr
	.align 2, 0
_080691B8: .4byte 0x3FE921FB
_080691BC: .4byte 0x54442D11

	thumb_func_start sub_080691C0
sub_080691C0: @ 0x080691C0
	push {lr}
	cmp r1, #0
	beq _080691CA
	bl sub_08091970
_080691CA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080691D0
sub_080691D0: @ 0x080691D0
	push {lr}
	cmp r1, #0
	beq _080691DA
	bl sub_08091A08
_080691DA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080691E0
sub_080691E0: @ 0x080691E0
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r3, _08069204 @ =0x00000000
	ldr r2, _08069200 @ =0x00000000
	bl sub_08092798
	cmp r0, #0
	blt _08069210
	ldr r2, _08069208 @ =0x3FE00000
	ldr r3, _0806920C @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_080920A4
	b _0806921C
	.align 2, 0
_08069200: .4byte 0x00000000
_08069204: .4byte 0x00000000
_08069208: .4byte 0x3FE00000
_0806920C: .4byte 0x00000000
_08069210:
	ldr r3, _0806922C @ =0x00000000
	ldr r2, _08069228 @ =0x3FE00000
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_080920D4
_0806921C:
	bl sub_080928AC
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08069228: .4byte 0x3FE00000
_0806922C: .4byte 0x00000000

	thumb_func_start sub_08069230
sub_08069230: @ 0x08069230
	push {lr}
	ldr r3, _0806924C @ =0x54442D11
	ldr r2, _08069248 @ =0x400921FB
	bl sub_0809210C
	ldr r2, _08069250 @ =0x40668000
	ldr r3, _08069254 @ =0x00000000
	bl sub_080923B4
	pop {r2}
	bx r2
	.align 2, 0
_08069248: .4byte 0x400921FB
_0806924C: .4byte 0x54442D11
_08069250: .4byte 0x40668000
_08069254: .4byte 0x00000000

	thumb_func_start sub_08069258
sub_08069258: @ 0x08069258
	push {lr}
	ldr r3, _08069274 @ =0x00000000
	ldr r2, _08069270 @ =0x40668000
	bl sub_0809210C
	ldr r2, _08069278 @ =0x400921FB
	ldr r3, _0806927C @ =0x54442D11
	bl sub_080923B4
	pop {r2}
	bx r2
	.align 2, 0
_08069270: .4byte 0x40668000
_08069274: .4byte 0x00000000
_08069278: .4byte 0x400921FB
_0806927C: .4byte 0x54442D11

	thumb_func_start sub_08069280
sub_08069280: @ 0x08069280
	ldr r1, _0806928C @ =0x00000000
	ldr r0, _08069288 @ =0x00000000
	bx lr
	.align 2, 0
_08069288: .4byte 0x00000000
_0806928C: .4byte 0x00000000

	thumb_func_start sub_08069290
sub_08069290: @ 0x08069290
	ldr r1, _0806929C @ =0x00000000
	ldr r0, _08069298 @ =0x3FF00000
	bx lr
	.align 2, 0
_08069298: .4byte 0x3FF00000
_0806929C: .4byte 0x00000000

	thumb_func_start sub_080692A0
sub_080692A0: @ 0x080692A0
	ldr r1, _080692AC @ =0x00000000
	ldr r0, _080692A8 @ =0x00000000
	bx lr
	.align 2, 0
_080692A8: .4byte 0x00000000
_080692AC: .4byte 0x00000000

	thumb_func_start sub_080692B0
sub_080692B0: @ 0x080692B0
	ldr r1, _080692BC @ =0x00000000
	ldr r0, _080692B8 @ =0x00000000
	bx lr
	.align 2, 0
_080692B8: .4byte 0x00000000
_080692BC: .4byte 0x00000000

	thumb_func_start sub_080692C0
sub_080692C0: @ 0x080692C0
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r3, #0
	ldr r7, _08069304 @ =0x0000026F
	ldr r0, _08069308 @ =gUnknown_02001080
	mov ip, r0
	ldr r6, _0806930C @ =0xFFFF0000
	ldr r4, _08069310 @ =0x00010DCD
	ldr r5, _08069314 @ =gUnknown_02001084
_080692D2:
	adds r1, r2, #0
	ands r1, r6
	str r1, [r5]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r2, r0, #1
	adds r0, r2, #0
	ands r0, r6
	lsrs r0, r0, #0x10
	orrs r1, r0
	stm r5!, {r1}
	adds r0, r2, #0
	muls r0, r4, r0
	adds r2, r0, #1
	adds r3, #1
	cmp r3, r7
	bls _080692D2
	movs r0, #0x9c
	lsls r0, r0, #2
	mov r1, ip
	str r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069304: .4byte 0x0000026F
_08069308: .4byte gUnknown_02001080
_0806930C: .4byte 0xFFFF0000
_08069310: .4byte 0x00010DCD
_08069314: .4byte gUnknown_02001084

	thumb_func_start sub_08069318
sub_08069318: @ 0x08069318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _08069420 @ =gUnknown_080FEBA8
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _08069424 @ =gUnknown_02001080
	ldr r2, [r0]
	ldr r1, _08069428 @ =0x0000026F
	mov r8, r0
	cmp r2, r1
	bls _080693E8
	ldr r0, _0806942C @ =0x00000271
	cmp r2, r0
	bne _08069342
	ldr r0, _08069430 @ =0x00001105
	bl sub_080692C0
_08069342:
	movs r3, #0
	ldr r5, _08069434 @ =gUnknown_02001084
	adds r7, r5, #0
_08069348:
	ldr r4, [r5]
	movs r6, #0x80
	lsls r6, r6, #0x18
	ands r4, r6
	ldr r0, [r5, #4]
	ldr r1, _08069438 @ =0x7FFFFFFF
	ands r0, r1
	orrs r4, r0
	ldr r1, _0806943C @ =0x0000018D
	adds r0, r3, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	lsrs r2, r4, #1
	ldr r1, [r0]
	eors r1, r2
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, sp
	ldr r0, [r0]
	eors r1, r0
	stm r5!, {r1}
	adds r3, #1
	cmp r3, #0xe2
	bls _08069348
	ldr r5, _08069440 @ =0x0000026E
	cmp r3, r5
	bhi _080693B2
	ldr r1, _08069434 @ =gUnknown_02001084
	lsls r0, r3, #2
	adds r2, r0, r1
	ldr r4, _08069444 @ =0xFFFFFC74
	adds r0, r0, r4
	adds r7, r0, r1
_0806938C:
	ldr r4, [r2]
	ands r4, r6
	ldr r0, [r2, #4]
	ldr r1, _08069438 @ =0x7FFFFFFF
	ands r0, r1
	orrs r4, r0
	lsrs r0, r4, #1
	ldm r7!, {r1}
	eors r1, r0
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, sp
	ldr r0, [r0]
	eors r1, r0
	stm r2!, {r1}
	adds r3, #1
	cmp r3, r5
	bls _0806938C
_080693B2:
	ldr r2, _08069434 @ =gUnknown_02001084
	ldr r0, _08069448 @ =0x000009BC
	adds r3, r2, r0
	ldr r4, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r4, r0
	ldr r0, [r2]
	ldr r1, _08069438 @ =0x7FFFFFFF
	ands r0, r1
	orrs r4, r0
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r2, r2, r1
	lsrs r0, r4, #1
	ldr r1, [r2]
	eors r1, r0
	movs r0, #1
	ands r4, r0
	lsls r0, r4, #2
	add r0, sp
	ldr r0, [r0]
	eors r1, r0
	str r1, [r3]
	movs r0, #0
	mov r4, r8
	str r0, [r4]
_080693E8:
	ldr r2, _08069434 @ =gUnknown_02001084
	mov r0, r8
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r4, [r0]
	adds r1, #1
	mov r0, r8
	str r1, [r0]
	lsrs r0, r4, #0xb
	eors r4, r0
	lsls r0, r4, #7
	ldr r1, _0806944C @ =0x9D2C5680
	ands r0, r1
	eors r4, r0
	lsls r0, r4, #0xf
	ldr r1, _08069450 @ =0xEFC60000
	ands r0, r1
	eors r4, r0
	lsrs r0, r4, #0x12
	eors r4, r0
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08069420: .4byte gUnknown_080FEBA8
_08069424: .4byte gUnknown_02001080
_08069428: .4byte 0x0000026F
_0806942C: .4byte 0x00000271
_08069430: .4byte 0x00001105
_08069434: .4byte gUnknown_02001084
_08069438: .4byte 0x7FFFFFFF
_0806943C: .4byte 0x0000018D
_08069440: .4byte 0x0000026E
_08069444: .4byte 0xFFFFFC74
_08069448: .4byte 0x000009BC
_0806944C: .4byte 0x9D2C5680
_08069450: .4byte 0xEFC60000

	thumb_func_start sub_08069454
sub_08069454: @ 0x08069454
	push {r4, r5, lr}
	adds r5, r0, #0
	subs r4, r1, r5
	adds r4, #1
	bl sub_08069318
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r4, r0, r4
	asrs r4, r4, #8
	adds r5, r5, r4
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069474
sub_08069474: @ 0x08069474
	push {r4, lr}
	adds r4, r3, #0
	muls r0, r1, r0
	adds r1, r2, #0
	bl sub_080691C0
	adds r0, r0, r4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08069488
sub_08069488: @ 0x08069488
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x10]
	adds r0, r1, #0
	muls r0, r4, r0
	muls r0, r4, r0
	adds r1, r2, #0
	bl sub_080691C0
	adds r1, r5, #0
	muls r1, r4, r1
	adds r0, r0, r1
	adds r0, r0, r6
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080694AC
sub_080694AC: @ 0x080694AC
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_080691D0
	asrs r4, r4, #1
	cmp r0, r4
	blt _080694C0
	adds r0, r5, #0
	b _080694C2
_080694C0:
	movs r0, #0
_080694C2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080694C8
sub_080694C8: @ 0x080694C8
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	lsls r3, r3, #2
	lsls r1, r7, #2
	adds r7, r1, #0
	asrs r4, r1, #1
	adds r0, r1, #0
	cmp r1, #0
	bge _080694E0
	adds r0, r1, #3
_080694E0:
	asrs r5, r0, #2
	adds r0, r3, #0
	bl sub_080691D0
	adds r3, r0, #0
	cmp r3, r5
	blt _080694F4
	cmp r3, r4
	bge _08069500
	subs r3, r4, r3
_080694F4:
	adds r0, r6, #0
	muls r0, r3, r0
	adds r1, r5, #0
	bl sub_080691C0
	b _08069518
_08069500:
	adds r0, r4, r5
	cmp r3, r0
	bge _0806950A
	subs r3, r3, r4
	b _0806950C
_0806950A:
	subs r3, r7, r3
_0806950C:
	adds r0, r6, #0
	muls r0, r3, r0
	adds r1, r5, #0
	bl sub_080691C0
	rsbs r0, r0, #0
_08069518:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069520
sub_08069520: @ 0x08069520
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_080691D0
	adds r1, r4, #0
	bl sub_080691C0
	muls r0, r5, r0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08069538
sub_08069538: @ 0x08069538
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	muls r0, r1, r0
	adds r1, r2, #0
	muls r1, r2, r1
	subs r0, r0, r1
	bl sub_08092830
	bl sub_080692B0
	bl sub_080928AC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069558
sub_08069558: @ 0x08069558
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	adds r0, r4, #0
	muls r0, r5, r0
	adds r1, r6, #0
	bl sub_080691C0
	mov r8, r0
	mov r0, sb
	muls r0, r5, r0
	adds r1, r6, #0
	bl sub_080691C0
	mov r1, r8
	subs r4, r4, r1
	adds r4, r4, r0
	adds r0, r4, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069594
sub_08069594: @ 0x08069594
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_080695A4
sub_080695A4: @ 0x080695A4
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08091970
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080695BC
sub_080695BC: @ 0x080695BC
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08091970
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_080695D4
sub_080695D4: @ 0x080695D4
	push {r4, lr}
	adds r2, r0, #0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r1, #0x10
	lsrs r3, r3, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	muls r0, r1, r0
	lsls r0, r0, #0x10
	muls r2, r3, r2
	muls r1, r4, r1
	adds r2, r2, r1
	adds r0, r0, r2
	adds r1, r4, #0
	muls r1, r3, r1
	asrs r1, r1, #0x10
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08069600
sub_08069600: @ 0x08069600
	movs r0, #0
	bx lr

	thumb_func_start sub_08069604
sub_08069604: @ 0x08069604
	movs r0, #0
	bx lr