.include "asm/macros.inc"

.syntax unified
.section .text

    thumb_func_start init__12ClockManager
init__12ClockManager:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__5Clock
	pop	{r1}
	bx	r1

	thumb_func_start getName__12ClockManager
getName__12ClockManager:
	ldr	r0, .L17
	bx	lr
	.align	2, 0
.L17: .word	const_classname_Clock

    thumb_func_start init__16PostSysClockRTTI
init__16PostSysClockRTTI:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__12PostSysClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__16PostSysClockRTTI
getName__16PostSysClockRTTI:
	ldr	r0, .L21
	bx	lr
	.align	2, 0
.L21: .word	const_classname_PostSysClock

    thumb_func_start _._12PostSysClock
_._12PostSysClock:
	push	{lr}
	ldr	r2, .L27
	str	r2, [r0, #28]
	bl	_._4Base
	pop	{r0}
	bx	r0
	.align	2, 0
.L27: .word	_vt.5Event

    thumb_func_start init__16PostAppClockRTTI
init__16PostAppClockRTTI:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__12PostAppClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__16PostAppClockRTTI
getName__16PostAppClockRTTI:
	ldr	r0, .L31
	bx	lr
	.align	2, 0
.L31: .word	const_classname_PostAppClock

    thumb_func_start _._12PostAppClock
_._12PostAppClock:
	push	{lr}
	ldr	r2, .L37
	str	r2, [r0, #28]
	bl	_._4Base
	pop	{r0}
	bx	r0
	.align	2, 0
.L37: .word	_vt.5Event

    thumb_func_start init__12AppClockRTTI
init__12AppClockRTTI:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__8AppClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__12AppClockRTTI
getName__12AppClockRTTI:
	ldr	r0, .L41
	bx	lr
	.align	2, 0
.L41: .word	const_classname_AppClock

    thumb_func_start _._8AppClock
_._8AppClock:
	push	{lr}
	ldr	r2, .L47
	str	r2, [r0, #28]
	bl	_._4Base
	pop	{r0}
	bx	r0
	.align	2, 0
.L47: .word	_vt.5Event

    thumb_func_start init__15PreAppClockRTTI
init__15PreAppClockRTTI:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__11PreAppClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__15PreAppClockRTTI
getName__15PreAppClockRTTI:
	ldr	r0, .L51
	bx	lr
	.align	2, 0
.L51: .word	const_classname_PreAppClock

    thumb_func_start _._11PreAppClock
_._11PreAppClock:
	push	{lr}
	ldr	r2, .L57
	str	r2, [r0, #28]
	bl	_._4Base
	pop	{r0}
	bx	r0
	.align	2, 0
.L57: .word	_vt.5Event

    thumb_func_start init__12SysClockRTTI
init__12SysClockRTTI:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__8SysClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__12SysClockRTTI
getName__12SysClockRTTI:
	ldr	r0, .L61
	bx	lr
	.align	2, 0
.L61: .word	const_classname_SysClock

    thumb_func_start _._8SysClock
_._8SysClock:
	push	{lr}
	ldr	r2, .L67
	str	r2, [r0, #28]
	bl	_._4Base
	pop	{r0}
	bx	r0
	.align	2, 0
.L67: .word	_vt.5Event

    thumb_func_start init__15PreSysClockRTTI
init__15PreSysClockRTTI:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__11PreSysClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__15PreSysClockRTTI
getName__15PreSysClockRTTI:
	ldr	r0, .L71
	bx	lr
	.align	2, 0
.L71: .word	const_classname_PreSysClock

    thumb_func_start _._11PreSysClock
_._11PreSysClock:
	push	{lr}
	ldr	r2, .L77
	str	r2, [r0, #28]
	bl	_._4Base
	pop	{r0}
	bx	r0
	.align	2, 0
.L77: .word	_vt.5Event

	thumb_func_start init__14GEngineManager
init__14GEngineManager: @ 0x080C0D1C
	push {lr}
	movs r0, #0x7c
	bl __builtin_new
	bl __7GEngine
	pop {r1}
	bx r1

	thumb_func_start getName__14GEngineManager
getName__14GEngineManager: @ 0x080C0D2C
	ldr r0, _080C0D30 @ =const_classname_GEngine
	bx lr
	.align 2, 0
_080C0D30: .4byte const_classname_GEngine

	thumb_func_start init__15BGEngineManager
init__15BGEngineManager: @ 0x080C0D34
	push {lr}
	movs r0, #0x88
	lsls r0, r0, #1
	bl __builtin_new
	bl __8BGEngine
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start getName__15BGEngineManager
getName__15BGEngineManager: @ 0x080C0D48
	ldr r0, _080C0D4C @ =const_classname_BGEngine
	bx lr
	.align 2, 0
_080C0D4C: .4byte const_classname_BGEngine

	thumb_func_start sub_080C0D50
sub_080C0D50: @ 0x080C0D50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	ldrh r0, [r6]
	movs r7, #0
	strh r0, [r5]
	adds r4, r5, #4
	adds r0, r6, #4
	mov r8, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080C0D74
	bl __builtin_vec_delete
_080C0D74:
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r0, #0
	bgt _080C0D8E
	str r7, [r5, #4]
	str r7, [r4, #4]
	str r7, [r4, #8]
	adds r7, r5, #0
	adds r7, #0x18
	movs r2, #0x18
	adds r2, r2, r6
	mov sb, r2
	b _080C0DC0
_080C0D8E:
	str r0, [r5, #4]
	str r0, [r4, #4]
	lsls r0, r0, #1
	bl __builtin_vec_new
	str r0, [r4, #8]
	mov r7, r8
	ldr r3, [r7, #8]
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r7, r5, #0
	adds r7, #0x18
	movs r1, #0x18
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #0
	ble _080C0DC0
	adds r1, r0, #0
_080C0DB2:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080C0DB2
_080C0DC0:
	ldrh r0, [r6, #0x10]
	movs r2, #0
	mov sl, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r6, #0x12]
	strh r0, [r5, #0x12]
	ldrh r0, [r6, #0x14]
	strh r0, [r5, #0x14]
	ldrh r0, [r6, #0x16]
	strh r0, [r5, #0x16]
	adds r4, r7, #0
	mov r8, sb
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080C0DE2
	bl __builtin_vec_delete
_080C0DE2:
	mov r3, r8
	ldr r0, [r3, #4]
	cmp r0, #0
	bgt _080C0DF4
	mov r7, sl
	str r7, [r5, #0x18]
	str r7, [r4, #4]
	str r7, [r4, #8]
	b _080C0E2E
_080C0DF4:
	str r0, [r5, #0x18]
	str r0, [r7, #4]
	lsls r0, r0, #5
	bl __builtin_vec_new
	str r0, [r7, #8]
	mov r1, sb
	ldr r1, [r1, #8]
	mov r8, r1
	mov sb, r0
	ldr r0, [r7, #4]
	cmp r0, #0
	ble _080C0E2E
	adds r2, r0, #0
_080C0E10:
	mov r1, sb
	mov r0, r8
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	movs r7, #0x20
	add r8, r7
	movs r0, #0x20
	add sb, r0
	subs r2, #1
	cmp r2, #0
	bne _080C0E10
_080C0E2E:
	ldr r0, [r6, #0x24]
	str r0, [r5, #0x24]
	ldr r0, [r6, #0x28]
	str r0, [r5, #0x28]
	ldr r0, [r6, #0x2c]
	str r0, [r5, #0x2c]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	ldrh r0, [r6, #0x34]
	strh r0, [r5, #0x34]
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C0E54
sub_080C0E54: @ 0x080C0E54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	ldrh r0, [r6]
	movs r2, #0
	strh r0, [r4]
	adds r5, r4, #4
	adds r7, r6, #4
	ldr r1, [r7, #4]
	cmp r1, #0
	bgt _080C0E7E
	str r2, [r4, #4]
	str r2, [r5, #4]
	str r2, [r5, #8]
	adds r7, r4, #0
	adds r7, #0x18
	adds r5, r6, #0
	adds r5, #0x18
	b _080C0EAE
_080C0E7E:
	ldr r0, [r6, #4]
	str r0, [r4, #4]
	str r1, [r5, #4]
	lsls r0, r1, #1
	bl __builtin_vec_new
	str r0, [r5, #8]
	ldr r3, [r7, #8]
	adds r2, r0, #0
	ldr r0, [r5, #4]
	adds r7, r4, #0
	adds r7, #0x18
	adds r5, r6, #0
	adds r5, #0x18
	cmp r0, #0
	ble _080C0EAE
	adds r1, r0, #0
_080C0EA0:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080C0EA0
_080C0EAE:
	ldrh r0, [r6, #0x10]
	movs r2, #0
	strh r0, [r4, #0x10]
	ldrh r0, [r6, #0x12]
	strh r0, [r4, #0x12]
	ldrh r0, [r6, #0x14]
	strh r0, [r4, #0x14]
	ldrh r0, [r6, #0x16]
	strh r0, [r4, #0x16]
	ldr r1, [r5, #4]
	cmp r1, #0
	bgt _080C0ECE
	str r2, [r4, #0x18]
	str r2, [r7, #4]
	str r2, [r7, #8]
	b _080C0F08
_080C0ECE:
	ldr r0, [r6, #0x18]
	str r0, [r4, #0x18]
	str r1, [r7, #4]
	lsls r0, r1, #5
	bl __builtin_vec_new
	str r0, [r7, #8]
	ldr r5, [r5, #8]
	mov ip, r5
	mov r8, r0
	ldr r0, [r7, #4]
	cmp r0, #0
	ble _080C0F08
	adds r2, r0, #0
_080C0EEA:
	mov r1, r8
	mov r0, ip
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	movs r7, #0x20
	add ip, r7
	movs r0, #0x20
	add r8, r0
	subs r2, #1
	cmp r2, #0
	bne _080C0EEA
_080C0F08:
	ldr r0, [r6, #0x24]
	str r0, [r4, #0x24]
	ldr r0, [r6, #0x28]
	str r0, [r4, #0x28]
	ldr r0, [r6, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r6, #0x30]
	str r0, [r4, #0x30]
	ldrh r0, [r6, #0x34]
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start init__16ObjEngineManager
init__16ObjEngineManager: @ 0x080C0F28
	push {lr}
	movs r0, #0xb5
	lsls r0, r0, #4
	bl __builtin_new
	bl __9ObjEngine
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start getName__16ObjEngineManager
getName__16ObjEngineManager: @ 0x080C0F3C
	ldr r0, _080C0F40 @ =const_classname_ObjEngine
	bx lr
	.align 2, 0
_080C0F40: .4byte const_classname_ObjEngine

	thumb_func_start init__17ObjChrPoolManager
init__17ObjChrPoolManager: @ 0x080C0F44
	push {lr}
	movs r0, #0x50
	bl __builtin_new
	bl __10ObjChrPool
	pop {r1}
	bx r1

	thumb_func_start getName__17ObjChrPoolManager
getName__17ObjChrPoolManager: @ 0x080C0F54
	ldr r0, _080C0F58 @ =const_classname_ObjChrPool
	bx lr
	.align 2, 0
_080C0F58: .4byte const_classname_ObjChrPool

	thumb_func_start init__17ObjPltPoolManager
init__17ObjPltPoolManager: @ 0x080C0F5C
	push {lr}
	movs r0, #0x2c
	bl __builtin_new
	bl __10ObjPltPool
	pop {r1}
	bx r1

	thumb_func_start getName__17ObjPltPoolManager
getName__17ObjPltPoolManager: @ 0x080C0F6C
	ldr r0, _080C0F70 @ =const_classname_ObjPltPool
	bx lr
	.align 2, 0
_080C0F70: .4byte const_classname_ObjPltPool
