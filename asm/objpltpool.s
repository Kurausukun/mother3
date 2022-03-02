.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0806C76C
sub_0806C76C: @ 0x0806C76C
	lsrs r0, r0, #4
	movs r1, #3
	ands r0, r1
	bx lr

	thumb_func_start sub_0806C774
sub_0806C774: @ 0x0806C774
	ldr r0, _0806C778 @ =gUnknown_02001D1C
	bx lr
	.align 2, 0
_0806C778: .4byte gUnknown_02001D1C

	thumb_func_start sub_0806C77C
sub_0806C77C: @ 0x0806C77C
	push {r4, lr}
	ldr r1, _0806C7A4 @ =gUnknown_02001D28
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806C798
	ldr r4, _0806C7A8 @ =gUnknown_02001D2C
	movs r0, #0x2c
	bl __builtin_new
	bl sub_0806C800
	str r0, [r4]
_0806C798:
	ldr r0, _0806C7A8 @ =gUnknown_02001D2C
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806C7A4: .4byte gUnknown_02001D28
_0806C7A8: .4byte gUnknown_02001D2C

	thumb_func_start sub_0806C7AC
sub_0806C7AC: @ 0x0806C7AC
	ldr r0, _0806C7B4 @ =gUnknown_02001D2C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0806C7B4: .4byte gUnknown_02001D2C

	thumb_func_start sub_0806C7B8
sub_0806C7B8: @ 0x0806C7B8
	push {r4, r5, lr}
	ldr r1, _0806C7EC @ =gUnknown_02001D28
	ldr r0, [r1]
	cmp r0, #0
	ble _0806C7E4
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0806C7E4
	ldr r5, _0806C7F0 @ =gUnknown_02001D2C
	ldr r2, [r5]
	cmp r2, #0
	beq _0806C7E2
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0806C7E2:
	str r4, [r5]
_0806C7E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C7EC: .4byte gUnknown_02001D28
_0806C7F0: .4byte gUnknown_02001D2C

	thumb_func_start sub_0806C7F4
sub_0806C7F4: @ 0x0806C7F4
	push {lr}
	bl sub_0806C774
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0806C800
sub_0806C800: @ 0x0806C800
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _0806C860 @ =vt_09F7F130
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	str r0, [r5, #0x20]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0806C864 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _0806C868 @ =_vt.8SysClock
	str r0, [sp, #0x20]
	ldr r0, _0806C86C @ =gUnknown_080FF664
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
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
_0806C860: .4byte vt_09F7F130
_0806C864: .4byte _vt.3Unk
_0806C868: .4byte _vt.8SysClock
_0806C86C: .4byte gUnknown_080FF664

	thumb_func_start sub_0806C870
sub_0806C870: @ 0x0806C870
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806C894 @ =vt_09F7F130
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0806C884
	bl __builtin_vec_delete
_0806C884:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C894: .4byte vt_09F7F130

	thumb_func_start sub_0806C898
sub_0806C898: @ 0x0806C898
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r3, _0806C95C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r3
	movs r3, #1
	orrs r0, r3
	lsls r1, r1, #0x10
	ldr r3, _0806C960 @ =0x0000FFFF
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	str r2, [sp, #4]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0806C964
	adds r6, r4, #0
	adds r6, #0x20
	mov r8, r0
	ldr r0, [r6, #4]
	adds r5, r0, #1
	ldr r0, [r4, #0x20]
	cmp r0, r5
	bge _0806C908
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0806C8DA
	adds r0, r1, #0
_0806C8DA:
	adds r5, r0, #0
	lsls r0, r5, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r4, [r6, #8]
	adds r3, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0806C8FA
	adds r2, r0, #0
_0806C8F0:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0806C8F0
_0806C8FA:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0806C904
	bl __builtin_vec_delete
_0806C904:
	str r5, [r6]
	str r7, [r6, #8]
_0806C908:
	mov r0, r8
	lsls r2, r0, #3
	ldr r1, [r6, #8]
	adds r1, r2, r1
	ldr r0, [r6, #4]
	mov r3, r8
	subs r5, r0, r3
	adds r3, r1, #0
	adds r3, #8
	lsls r0, r5, #3
	subs r0, #8
	adds r4, r1, r0
	adds r3, r3, r0
	adds r7, r2, #0
	cmp r5, #0
	ble _0806C93C
	adds r2, r5, #0
_0806C92A:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r3]
	str r1, [r3, #4]
	subs r4, #8
	subs r3, #8
	subs r2, #1
	cmp r2, #0
	bne _0806C92A
_0806C93C:
	ldr r0, [r6, #8]
	adds r0, r7, r0
	ldr r1, [sp]
	ldr r2, [sp, #4]
	str r1, [r0]
	str r2, [r0, #4]
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C95C: .4byte 0xFFFF0000
_0806C960: .4byte 0x0000FFFF

	thumb_func_start sub_0806C964
sub_0806C964: @ 0x0806C964
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r0, #0
	ble _0806C99A
	movs r3, #0
	adds r2, r0, #0
	cmp r3, r2
	bge _0806C998
	ldr r4, [r1, #8]
_0806C97C:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r4, r0
	ldr r0, [r0, #4]
	cmp r0, r5
	bhs _0806C992
	adds r3, r1, #1
	b _0806C994
_0806C992:
	adds r2, r1, #0
_0806C994:
	cmp r3, r2
	blt _0806C97C
_0806C998:
	adds r0, r3, #0
_0806C99A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0806C9A0
sub_0806C9A0: @ 0x0806C9A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806C9D4
	adds r2, r0, #0
	adds r4, #0x20
	ldr r0, [r4, #4]
	cmp r2, r0
	blt _0806C9BC
	ldr r0, _0806C9B8 @ =0x0000FFFF
	b _0806C9CE
	.align 2, 0
_0806C9B8: .4byte 0x0000FFFF
_0806C9BC:
	lsls r2, r2, #3
	ldr r1, [r4, #8]
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, [r4, #8]
	adds r0, r0, r2
	ldrh r0, [r0, #2]
_0806C9CE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806C9D4
sub_0806C9D4: @ 0x0806C9D4
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r0, #0x20
	ldr r4, [r0, #4]
	cmp r4, #0
	bgt _0806C9E4
	adds r0, r4, #0
	b _0806CA1E
_0806C9E4:
	movs r3, #0
	subs r2, r4, #1
	adds r7, r0, #0
	cmp r3, r2
	bge _0806CA0C
	ldr r6, [r7, #8]
_0806C9F0:
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	lsls r0, r1, #3
	adds r0, r6, r0
	ldr r0, [r0, #4]
	cmp r0, r5
	bhs _0806CA06
	adds r3, r1, #1
	b _0806CA08
_0806CA06:
	adds r2, r1, #0
_0806CA08:
	cmp r3, r2
	blt _0806C9F0
_0806CA0C:
	lsls r0, r3, #3
	ldr r1, [r7, #8]
	adds r1, r1, r0
	ldr r0, [r1, #4]
	adds r1, r4, #0
	cmp r0, r5
	bne _0806CA1C
	adds r1, r3, #0
_0806CA1C:
	adds r0, r1, #0
_0806CA1E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0806CA24
sub_0806CA24: @ 0x0806CA24
	movs r1, #0
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806CA2C
sub_0806CA2C: @ 0x0806CA2C
	push {r4, lr}
	ldr r4, _0806CA40 @ =gUnknown_02001D1C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _0806CA44 @ =vt_09F7F198
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CA40: .4byte gUnknown_02001D1C
_0806CA44: .4byte vt_09F7F198
