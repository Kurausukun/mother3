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

    thumb_func_start init__21PostSysClockSingleton
init__21PostSysClockSingleton:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__12PostSysClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__21PostSysClockSingleton
getName__21PostSysClockSingleton:
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

    thumb_func_start init__21PostAppClockSingleton
init__21PostAppClockSingleton:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__12PostAppClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__21PostAppClockSingleton
getName__21PostAppClockSingleton:
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

    thumb_func_start init__17AppClockSingleton
init__17AppClockSingleton:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__8AppClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__17AppClockSingleton
getName__17AppClockSingleton:
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

    thumb_func_start init__20PreAppClockSingleton
init__20PreAppClockSingleton:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__11PreAppClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__20PreAppClockSingleton
getName__20PreAppClockSingleton:
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

    thumb_func_start init__17SysClockSingleton
init__17SysClockSingleton:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__8SysClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__17SysClockSingleton
getName__17SysClockSingleton:
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

    thumb_func_start init__20PreSysClockSingleton
init__20PreSysClockSingleton:
	push	{lr}
	movs	r0, #36
	bl	__builtin_new
	bl	__11PreSysClock
	pop	{r1}
	bx	r1

    thumb_func_start getName__20PreSysClockSingleton
getName__20PreSysClockSingleton:
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
	bl sub_0806A9F8
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

	thumb_func_start init__22SelectKeyLongPressRTTI
init__22SelectKeyLongPressRTTI: @ 0x080C0F74
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C0F90 @ =_vt.18SelectKeyLongPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C0F90: .4byte _vt.18SelectKeyLongPress

	thumb_func_start getName__22SelectKeyLongPressRTTI
getName__22SelectKeyLongPressRTTI: @ 0x080C0F94
	ldr r0, _080C0F98 @ =const_classname_SelectKeyLongPress
	bx lr
	.align 2, 0
_080C0F98: .4byte const_classname_SelectKeyLongPress

	thumb_func_start _._18SelectKeyLongPress
_._18SelectKeyLongPress: @ 0x080C0F9C
	push {lr}
	ldr r2, _080C0FAC @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C0FAC: .4byte _vt.5Event

	thumb_func_start init__18SelectKeyPressRTTI
init__18SelectKeyPressRTTI: @ 0x080C0FB0
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C0FCC @ =_vt.14SelectKeyPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C0FCC: .4byte _vt.14SelectKeyPress

	thumb_func_start getName__18SelectKeyPressRTTI
getName__18SelectKeyPressRTTI: @ 0x080C0FD0
	ldr r0, _080C0FD4 @ =const_classname_SelectKeyPress
	bx lr
	.align 2, 0
_080C0FD4: .4byte const_classname_SelectKeyPress

	thumb_func_start _._14SelectKeyPress
_._14SelectKeyPress: @ 0x080C0FD8
	push {lr}
	ldr r2, _080C0FE8 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C0FE8: .4byte _vt.5Event

	thumb_func_start init__21StartKeyLongPressRTTI
init__21StartKeyLongPressRTTI: @ 0x080C0FEC
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1008 @ =_vt.17StartKeyLongPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1008: .4byte _vt.17StartKeyLongPress

	thumb_func_start getName__21StartKeyLongPressRTTI
getName__21StartKeyLongPressRTTI: @ 0x080C100C
	ldr r0, _080C1010 @ =const_classname_StartKeyLongPress
	bx lr
	.align 2, 0
_080C1010: .4byte const_classname_StartKeyLongPress

	thumb_func_start _._17StartKeyLongPress
_._17StartKeyLongPress: @ 0x080C1014
	push {lr}
	ldr r2, _080C1024 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1024: .4byte _vt.5Event

	thumb_func_start init__17StartKeyPressRTTI
init__17StartKeyPressRTTI: @ 0x080C1028
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1044 @ =_vt.13StartKeyPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1044: .4byte _vt.13StartKeyPress

	thumb_func_start getName__17StartKeyPressRTTI
getName__17StartKeyPressRTTI: @ 0x080C1048
	ldr r0, _080C104C @ =const_classname_StartKeyPress
	bx lr
	.align 2, 0
_080C104C: .4byte const_classname_StartKeyPress

	thumb_func_start _._13StartKeyPress
_._13StartKeyPress: @ 0x080C1050
	push {lr}
	ldr r2, _080C1060 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1060: .4byte _vt.5Event

	thumb_func_start init__17RKeyLongPressRTTI
init__17RKeyLongPressRTTI: @ 0x080C1064
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1080 @ =_vt.13RKeyLongPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1080: .4byte _vt.13RKeyLongPress

	thumb_func_start getName__17RKeyLongPressRTTI
getName__17RKeyLongPressRTTI: @ 0x080C1084
	ldr r0, _080C1088 @ =const_classname_RKeyLongPress
	bx lr
	.align 2, 0
_080C1088: .4byte const_classname_RKeyLongPress

	thumb_func_start _._13RKeyLongPress
_._13RKeyLongPress: @ 0x080C108C
	push {lr}
	ldr r2, _080C109C @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C109C: .4byte _vt.5Event

	thumb_func_start init__13RKeyPressRTTI
init__13RKeyPressRTTI: @ 0x080C10A0
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C10BC @ =_vt.9RKeyPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C10BC: .4byte _vt.9RKeyPress

	thumb_func_start getName__13RKeyPressRTTI
getName__13RKeyPressRTTI: @ 0x080C10C0
	ldr r0, _080C10C4 @ =const_classname_RKeyPress
	bx lr
	.align 2, 0
_080C10C4: .4byte const_classname_RKeyPress

	thumb_func_start _._9RKeyPress
_._9RKeyPress: @ 0x080C10C8
	push {lr}
	ldr r2, _080C10D8 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C10D8: .4byte _vt.5Event

	thumb_func_start init__17LKeyLongPressRTTI
init__17LKeyLongPressRTTI: @ 0x080C10DC
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C10F8 @ =_vt.13LKeyLongPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C10F8: .4byte _vt.13LKeyLongPress

	thumb_func_start getName__17LKeyLongPressRTTI
getName__17LKeyLongPressRTTI: @ 0x080C10FC
	ldr r0, _080C1100 @ =const_classname_LKeyLongPress
	bx lr
	.align 2, 0
_080C1100: .4byte const_classname_LKeyLongPress

	thumb_func_start _._13LKeyLongPress
_._13LKeyLongPress: @ 0x080C1104
	push {lr}
	ldr r2, _080C1114 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1114: .4byte _vt.5Event

	thumb_func_start init__13LKeyPressRTTI
init__13LKeyPressRTTI: @ 0x080C1118
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1134 @ =_vt.9LKeyPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1134: .4byte _vt.9LKeyPress

	thumb_func_start getName__13LKeyPressRTTI
getName__13LKeyPressRTTI: @ 0x080C1138
	ldr r0, _080C113C @ =const_classname_LKeyPress
	bx lr
	.align 2, 0
_080C113C: .4byte const_classname_LKeyPress

	thumb_func_start _._9LKeyPress
_._9LKeyPress: @ 0x080C1140
	push {lr}
	ldr r2, _080C1150 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1150: .4byte _vt.5Event

	thumb_func_start init__17BKeyLongPressRTTI
init__17BKeyLongPressRTTI: @ 0x080C1154
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1170 @ =_vt.13BKeyLongPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1170: .4byte _vt.13BKeyLongPress

	thumb_func_start getName__17BKeyLongPressRTTI
getName__17BKeyLongPressRTTI: @ 0x080C1174
	ldr r0, _080C1178 @ =const_classname_BKeyLongPress
	bx lr
	.align 2, 0
_080C1178: .4byte const_classname_BKeyLongPress

	thumb_func_start _._13BKeyLongPress
_._13BKeyLongPress: @ 0x080C117C
	push {lr}
	ldr r2, _080C118C @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C118C: .4byte _vt.5Event

	thumb_func_start init__13BKeyPressRTTI
init__13BKeyPressRTTI: @ 0x080C1190
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C11AC @ =_vt.9BKeyPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C11AC: .4byte _vt.9BKeyPress

	thumb_func_start getName__13BKeyPressRTTI
getName__13BKeyPressRTTI: @ 0x080C11B0
	ldr r0, _080C11B4 @ =const_classname_BKeyPress
	bx lr
	.align 2, 0
_080C11B4: .4byte const_classname_BKeyPress

	thumb_func_start _._9BKeyPress
_._9BKeyPress: @ 0x080C11B8
	push {lr}
	ldr r2, _080C11C8 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C11C8: .4byte _vt.5Event

	thumb_func_start init__17AKeyLongPressRTTI
init__17AKeyLongPressRTTI: @ 0x080C11CC
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C11E8 @ =_vt.13AKeyLongPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C11E8: .4byte _vt.13AKeyLongPress

   	thumb_func_start getName__17AKeyLongPressRTTI
getName__17AKeyLongPressRTTI: @ 0x080C11EC
	ldr r0, _080C11F0 @ =const_classname_AKeyLongPress
	bx lr
	.align 2, 0
_080C11F0: .4byte const_classname_AKeyLongPress

	thumb_func_start _._13AKeyLongPress
_._13AKeyLongPress: @ 0x080C11F4
	push {lr}
	ldr r2, _080C1204 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1204: .4byte _vt.5Event

	thumb_func_start init__13AKeyPressRTTI
init__13AKeyPressRTTI: @ 0x080C1208
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1224 @ =_vt.9AKeyPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1224: .4byte _vt.9AKeyPress

	thumb_func_start getName__13AKeyPressRTTI
getName__13AKeyPressRTTI: @ 0x080C1228
	ldr r0, _080C122C @ =const_classname_AKeyPress
	bx lr
	.align 2, 0
_080C122C: .4byte const_classname_AKeyPress

	thumb_func_start _._9AKeyPress
_._9AKeyPress: @ 0x080C1230
	push {lr}
	ldr r2, _080C1240 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1240: .4byte _vt.5Event

	thumb_func_start init__21RightKeyLongPressRTTI
init__21RightKeyLongPressRTTI: @ 0x080C1244
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1260 @ =_vt.17RightKeyLongPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1260: .4byte _vt.17RightKeyLongPress

	thumb_func_start getName__21RightKeyLongPressRTTI
getName__21RightKeyLongPressRTTI: @ 0x080C1264
	ldr r0, _080C1268 @ =const_classname_RightKeyLongPress
	bx lr
	.align 2, 0
_080C1268: .4byte const_classname_RightKeyLongPress

	thumb_func_start _._17RightKeyLongPress
_._17RightKeyLongPress: @ 0x080C126C
	push {lr}
	ldr r2, _080C127C @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C127C: .4byte _vt.5Event

	thumb_func_start init__17RightKeyPressRTTI
init__17RightKeyPressRTTI: @ 0x080C1280
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C129C @ =_vt.13RightKeyPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C129C: .4byte _vt.13RightKeyPress

	thumb_func_start getName__17RightKeyPressRTTI
getName__17RightKeyPressRTTI: @ 0x080C12A0
	ldr r0, _080C12A4 @ =const_classname_RightKeyPress
	bx lr
	.align 2, 0
_080C12A4: .4byte const_classname_RightKeyPress

	thumb_func_start _._13RightKeyPress
_._13RightKeyPress: @ 0x080C12A8
	push {lr}
	ldr r2, _080C12B8 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C12B8: .4byte _vt.5Event

	thumb_func_start init__20LeftKeyLongPressRTTI
init__20LeftKeyLongPressRTTI: @ 0x080C12BC
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C12D8 @ =_vt.16LeftKeyLongPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C12D8: .4byte _vt.16LeftKeyLongPress

	thumb_func_start getName__20LeftKeyLongPressRTTI
getName__20LeftKeyLongPressRTTI: @ 0x080C12DC
	ldr r0, _080C12E0 @ =const_classname_LeftKeyLongPress
	bx lr
	.align 2, 0
_080C12E0: .4byte const_classname_LeftKeyLongPress

	thumb_func_start _._16LeftKeyLongPress
_._16LeftKeyLongPress: @ 0x080C12E4
	push {lr}
	ldr r2, _080C12F4 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C12F4: .4byte _vt.5Event

	thumb_func_start init__16LeftKeyPressRTTI
init__16LeftKeyPressRTTI: @ 0x080C12F8
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1314 @ =_vt.12LeftKeyPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1314: .4byte _vt.12LeftKeyPress

	thumb_func_start getName__16LeftKeyPressRTTI
getName__16LeftKeyPressRTTI: @ 0x080C1318
	ldr r0, _080C131C @ =const_classname_LeftKeyPress
	bx lr
	.align 2, 0
_080C131C: .4byte const_classname_LeftKeyPress

	thumb_func_start _._12LeftKeyPress
_._12LeftKeyPress: @ 0x080C1320
	push {lr}
	ldr r2, _080C1330 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1330: .4byte _vt.5Event

	thumb_func_start init__20DownKeyLongPressRTTI
init__20DownKeyLongPressRTTI: @ 0x080C1334
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1350 @ =_vt.16DownKeyLongPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1350: .4byte _vt.16DownKeyLongPress

	thumb_func_start getName__20DownKeyLongPressRTTI
getName__20DownKeyLongPressRTTI: @ 0x080C1354
	ldr r0, _080C1358 @ =const_classname_DownKeyLongPress
	bx lr
	.align 2, 0
_080C1358: .4byte const_classname_DownKeyLongPress

	thumb_func_start _._16DownKeyLongPress
_._16DownKeyLongPress: @ 0x080C135C
	push {lr}
	ldr r2, _080C136C @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C136C: .4byte _vt.5Event

	thumb_func_start init__16DownKeyPressRTTI
init__16DownKeyPressRTTI: @ 0x080C1370
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C138C @ =_vt.12DownKeyPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C138C: .4byte _vt.12DownKeyPress

	thumb_func_start getName__16DownKeyPressRTTI
getName__16DownKeyPressRTTI: @ 0x080C1390
	ldr r0, _080C1394 @ =const_classname_DownKeyPress
	bx lr
	.align 2, 0
_080C1394: .4byte const_classname_DownKeyPress

	thumb_func_start _._12DownKeyPress
_._12DownKeyPress: @ 0x080C1398
	push {lr}
	ldr r2, _080C13A8 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C13A8: .4byte _vt.5Event

	thumb_func_start init__18UpKeyLongPressRTTI
init__18UpKeyLongPressRTTI: @ 0x080C13AC
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C13C8 @ =_vt.14UpKeyLongPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C13C8: .4byte _vt.14UpKeyLongPress

	thumb_func_start getName__18UpKeyLongPressRTTI
getName__18UpKeyLongPressRTTI: @ 0x080C13CC
	ldr r0, _080C13D0 @ =const_classname_UpKeyLongPress
	bx lr
	.align 2, 0
_080C13D0: .4byte const_classname_UpKeyLongPress

	thumb_func_start _._14UpKeyLongPress
_._14UpKeyLongPress: @ 0x080C13D4
	push {lr}
	ldr r2, _080C13E4 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C13E4: .4byte _vt.5Event

	thumb_func_start init__14UpKeyPressRTTI
init__14UpKeyPressRTTI: @ 0x080C13E8
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C1404 @ =_vt.10UpKeyPress
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C1404: .4byte _vt.10UpKeyPress

	thumb_func_start getName__14UpKeyPressRTTI
getName__14UpKeyPressRTTI: @ 0x080C1408
	ldr r0, _080C140C @ =const_classname_UpKeyPress
	bx lr
	.align 2, 0
_080C140C: .4byte const_classname_UpKeyPress

	thumb_func_start _._10UpKeyPress
_._10UpKeyPress: @ 0x080C1410
	push {lr}
	ldr r2, _080C1420 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1420: .4byte _vt.5Event

	thumb_func_start init__13KeyPadManager
init__13KeyPadManager: @ 0x080C1424
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl __6KeyPad
	pop {r1}
	bx r1

	thumb_func_start getName__13KeyPadManager
getName__13KeyPadManager: @ 0x080C1434
	ldr r0, _080C1438 @ =const_classname_KeyPad
	bx lr
	.align 2, 0
_080C1438: .4byte const_classname_KeyPad

	thumb_func_start init__16FntSystemManager
init__16FntSystemManager: @ 0x080C143C
	push {lr}
	movs r0, #0xa4
	bl __builtin_new
	bl __9FntSystem
	pop {r1}
	bx r1

	thumb_func_start getName__16FntSystemManager
getName__16FntSystemManager: @ 0x080C144C
	ldr r0, _080C1450 @ =const_classname_FntSystem
	bx lr
	.align 2, 0
_080C1450: .4byte const_classname_FntSystem

	thumb_func_start init__16RasSystemManager
init__16RasSystemManager: @ 0x080C1454
	push {lr}
	movs r0, #0x38
	bl __builtin_new
	bl __9RasSystem
	pop {r1}
	bx r1

	thumb_func_start getName__16RasSystemManager
getName__16RasSystemManager: @ 0x080C1464
	ldr r0, _080C1468 @ =const_classname_RasSystem
	bx lr
	.align 2, 0
_080C1468: .4byte const_classname_RasSystem

	thumb_func_start init__16EfcSystemManager
init__16EfcSystemManager: @ 0x080C146C
	push {lr}
	movs r0, #0x40
	bl __builtin_new
	bl __9EfcSystem
	pop {r1}
	bx r1

	thumb_func_start getName__16EfcSystemManager
getName__16EfcSystemManager: @ 0x080C147C
	ldr r0, _080C1480 @ =const_classname_EfcSystem
	bx lr
	.align 2, 0
_080C1480: .4byte const_classname_EfcSystem

	thumb_func_start init__16SndSystemManager
init__16SndSystemManager: @ 0x080C1484
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __9SndSystem
	pop {r1}
	bx r1

	thumb_func_start getName__16SndSystemManager
getName__16SndSystemManager: @ 0x080C1494
	ldr r0, _080C1498 @ =const_classname_SndSystem
	bx lr
	.align 2, 0
_080C1498: .4byte const_classname_SndSystem

	thumb_func_start init__22KeyFocusManagerManager
init__22KeyFocusManagerManager: @ 0x080C149C
	push {lr}
	movs r0, #0x2c
	bl __builtin_new
	bl __15KeyFocusManager
	pop {r1}
	bx r1

	thumb_func_start getName__22KeyFocusManagerManager
getName__22KeyFocusManagerManager: @ 0x080C14AC
	ldr r0, _080C14B0 @ =const_classname_KeyFocusManager
	bx lr
	.align 2, 0
_080C14B0: .4byte const_classname_KeyFocusManager

	thumb_func_start init__13RhythmOutRTTI
init__13RhythmOutRTTI: @ 0x080C14B4
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C14D0 @ =_vt.9RhythmOut
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C14D0: .4byte _vt.9RhythmOut

	thumb_func_start getName__13RhythmOutRTTI
getName__13RhythmOutRTTI: @ 0x080C14D4
	ldr r0, _080C14D8 @ =const_classname_RhythmOut
	bx lr
	.align 2, 0
_080C14D8: .4byte const_classname_RhythmOut

	thumb_func_start _._9RhythmOut
_._9RhythmOut: @ 0x080C14DC
	push {lr}
	ldr r2, _080C14EC @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C14EC: .4byte _vt.5Event

	thumb_func_start init__12RhythmInRTTI
init__12RhythmInRTTI: @ 0x080C14F0
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C150C @ =_vt.8RhythmIn
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C150C: .4byte _vt.8RhythmIn

	thumb_func_start getName__12RhythmInRTTI
getName__12RhythmInRTTI: @ 0x080C1510
	ldr r0, _080C1514 @ =const_classname_RhythmIn
	bx lr
	.align 2, 0
_080C1514: .4byte const_classname_RhythmIn

	thumb_func_start _._8RhythmIn
_._8RhythmIn: @ 0x080C1518
	push {lr}
	ldr r2, _080C1528 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1528: .4byte _vt.5Event

	thumb_func_start init__13RhythmBgmRTTI
init__13RhythmBgmRTTI: @ 0x080C152C
	push {lr}
	movs r0, #0x60
	bl __builtin_new
	bl __9RhythmBgm
	pop {r1}
	bx r1

	thumb_func_start getName__13RhythmBgmRTTI
getName__13RhythmBgmRTTI: @ 0x080C153C
	ldr r0, _080C1540 @ =const_classname_RhythmBgm
	bx lr
	.align 2, 0
_080C1540: .4byte const_classname_RhythmBgm

	thumb_func_start init__11UnitDieRTTI
init__11UnitDieRTTI: @ 0x080C1544
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __7UnitDie
	pop {r1}
	bx r1

	thumb_func_start getName__11UnitDieRTTI
getName__11UnitDieRTTI: @ 0x080C1554
	ldr r0, _080C1558 @ =const_classname_UnitDie
	bx lr
	.align 2, 0
_080C1558: .4byte const_classname_UnitDie

	thumb_func_start _._7UnitDie
_._7UnitDie: @ 0x080C155C
	push {lr}
	ldr r2, _080C156C @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C156C: .4byte _vt.5Event

	thumb_func_start init__14UnitEscapeRTTI
init__14UnitEscapeRTTI: @ 0x080C1570
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __10UnitEscape
	pop {r1}
	bx r1

	thumb_func_start getName__14UnitEscapeRTTI
getName__14UnitEscapeRTTI: @ 0x080C1580
	ldr r0, _080C1584 @ =const_classname_UnitEscape
	bx lr
	.align 2, 0
_080C1584: .4byte const_classname_UnitEscape

	thumb_func_start _._10UnitEscape
_._10UnitEscape: @ 0x080C1588
	push {lr}
	ldr r2, _080C1598 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1598: .4byte _vt.5Event

	thumb_func_start init__14UnitReviveRTTI
init__14UnitReviveRTTI: @ 0x080C159C
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __10UnitRevive
	pop {r1}
	bx r1

	thumb_func_start getName__14UnitReviveRTTI
getName__14UnitReviveRTTI: @ 0x080C15AC
	ldr r0, _080C15B0 @ =const_classname_UnitRevive
	bx lr
	.align 2, 0
_080C15B0: .4byte const_classname_UnitRevive

	thumb_func_start _._10UnitRevive
_._10UnitRevive: @ 0x080C15B4
	push {lr}
	ldr r2, _080C15C4 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C15C4: .4byte _vt.5Event

	thumb_func_start init__12UnitJoinRTTI
init__12UnitJoinRTTI: @ 0x080C15C8
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __8UnitJoin
	pop {r1}
	bx r1

	thumb_func_start getName__12UnitJoinRTTI
getName__12UnitJoinRTTI: @ 0x080C15D8
	ldr r0, _080C15DC @ =const_classname_UnitJoin
	bx lr
	.align 2, 0
_080C15DC: .4byte const_classname_UnitJoin

	thumb_func_start _._8UnitJoin
_._8UnitJoin: @ 0x080C15E0
	push {lr}
	ldr r2, _080C15F0 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C15F0: .4byte _vt.5Event

	thumb_func_start init__10ResumeRTTI
init__10ResumeRTTI: @ 0x080C15F4
	push {lr}
	movs r0, #0x20
	bl __builtin_new
	bl __6Resume
	pop {r1}
	bx r1

	thumb_func_start getName__10ResumeRTTI
getName__10ResumeRTTI: @ 0x080C1604
	ldr r0, _080C1608 @ =const_classname_Resume
	bx lr
	.align 2, 0
_080C1608: .4byte const_classname_Resume

	thumb_func_start _._6Resume
_._6Resume: @ 0x080C160C
	push {lr}
	ldr r2, _080C161C @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C161C: .4byte _vt.5Event

	thumb_func_start init__11SuspendRTTI
init__11SuspendRTTI: @ 0x080C1620
	push {lr}
	movs r0, #0x20
	bl __builtin_new
	bl __7Suspend
	pop {r1}
	bx r1

	thumb_func_start getName__11SuspendRTTI
getName__11SuspendRTTI: @ 0x080C1630
	ldr r0, _080C1634 @ =const_classname_Suspend
	bx lr
	.align 2, 0
_080C1634: .4byte const_classname_Suspend

	thumb_func_start _._7Suspend
_._7Suspend: @ 0x080C1638
	push {lr}
	ldr r2, _080C1648 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1648: .4byte _vt.5Event

	thumb_func_start _._6Object
_._6Object: @ 0x080C164C
	push {lr}
	adds r2, r0, #0
	ldr r0, _080C1668 @ =_vt.6Object
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1662
	adds r0, r2, #0
	bl __builtin_delete
_080C1662:
	pop {r0}
	bx r0
	.align 2, 0
_080C1668: .4byte _vt.6Object

	thumb_func_start init__10PlayerRTTI
init__10PlayerRTTI: @ 0x080C166C
	push {lr}
	movs r0, #0x87
	lsls r0, r0, #2
	bl __builtin_new
	bl sub_0807C6B8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start getName__10PlayerRTTI
getName__10PlayerRTTI: @ 0x080C1680
	ldr r0, _080C1684 @ =const_classname_Player
	bx lr
	.align 2, 0
_080C1684: .4byte const_classname_Player

	thumb_func_start sub_080C1688
sub_080C1688: @ 0x080C1688
	push {lr}
	ldr r2, _080C1698 @ =vt_09F826C8
	str r2, [r0, #0x1c]
	bl sub_0807113C
	pop {r0}
	bx r0
	.align 2, 0
_080C1698: .4byte vt_09F826C8

	thumb_func_start sub_080C169C
sub_080C169C: @ 0x080C169C
	push {lr}
	ldr r2, _080C16AC @ =vt_09F82898
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_080C16AC: .4byte vt_09F82898

	thumb_func_start init__15PlayerSkillRTTI
init__15PlayerSkillRTTI: @ 0x080C16B0
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl __11PlayerSkill
	pop {r1}
	bx r1

	thumb_func_start getName__15PlayerSkillRTTI
getName__15PlayerSkillRTTI: @ 0x080C16C0
	ldr r0, _080C16C4 @ =const_classname_PlayerSkill
	bx lr
	.align 2, 0
_080C16C4: .4byte const_classname_PlayerSkill

	thumb_func_start init__14GuestSkillRTTI
init__14GuestSkillRTTI: @ 0x080C16C8
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl __10GuestSkill
	pop {r1}
	bx r1

	thumb_func_start getName__14GuestSkillRTTI
getName__14GuestSkillRTTI: @ 0x080C16D8
	ldr r0, _080C16DC @ =const_classname_GuestSkill
	bx lr
	.align 2, 0
_080C16DC: .4byte const_classname_GuestSkill

	thumb_func_start init__11MonsterRTTI
init__11MonsterRTTI: @ 0x080C16E0
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #1
	bl __builtin_new
	bl sub_08081C08
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start getName__11MonsterRTTI
getName__11MonsterRTTI: @ 0x080C16F4
	ldr r0, _080C16F8 @ =const_classname_Monster
	bx lr
	.align 2, 0
_080C16F8: .4byte const_classname_Monster

	thumb_func_start init__16MonsterSkillRTTI
init__16MonsterSkillRTTI: @ 0x080C16FC
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl __12MonsterSkill
	pop {r1}
	bx r1

	thumb_func_start getName__16MonsterSkillRTTI
getName__16MonsterSkillRTTI: @ 0x080C170C
	ldr r0, _080C1710 @ =const_classname_MonsterSkill
	bx lr
	.align 2, 0
_080C1710: .4byte const_classname_MonsterSkill

	thumb_func_start init__7PsiRTTI
init__7PsiRTTI: @ 0x080C1714
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl __3Psi
	pop {r1}
	bx r1

	thumb_func_start getName__7PsiRTTI
getName__7PsiRTTI: @ 0x080C1724
	ldr r0, _080C1728 @ =const_classname_Psi
	bx lr
	.align 2, 0
_080C1728: .4byte const_classname_Psi

	thumb_func_start sub_080C172C
sub_080C172C: @ 0x080C172C
	push {lr}
	ldr r2, _080C173C @ =vt_09F83E40
	str r2, [r0, #0x1c]
	bl sub_0808AE24
	pop {r0}
	bx r0
	.align 2, 0
_080C173C: .4byte vt_09F83E40

	thumb_func_start sub_080C1740
sub_080C1740: @ 0x080C1740
	push {lr}
	adds r2, r0, #0
	ldr r0, _080C175C @ =vt_09F84CA8
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1756
	adds r0, r2, #0
	bl __builtin_delete
_080C1756:
	pop {r0}
	bx r0
	.align 2, 0
_080C175C: .4byte vt_09F84CA8

	thumb_func_start sub_080C1760
sub_080C1760: @ 0x080C1760
	push {lr}
	bl sub_08089664
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C176C
sub_080C176C: @ 0x080C176C
	push {lr}
	ldr r2, _080C177C @ =vt_09F85378
	str r2, [r0, #0x1c]
	bl sub_080895C0
	pop {r0}
	bx r0
	.align 2, 0
_080C177C: .4byte vt_09F85378

	thumb_func_start sub_080C1780
sub_080C1780: @ 0x080C1780
	push {lr}
	adds r2, r0, #0
	ldr r0, _080C179C @ =vt_09F85E70
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1796
	adds r0, r2, #0
	bl __builtin_delete
_080C1796:
	pop {r0}
	bx r0
	.align 2, 0
_080C179C: .4byte vt_09F85E70
    .syntax divided
