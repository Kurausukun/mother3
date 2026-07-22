	.syntax unified
sub_080A6908:
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi _080A6974
	lsls r0, r0, #2
	ldr r1, _080A6924
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6924: .4byte _080A6928
_080A6928:
	.4byte _080A693C
	.4byte _080A6946
	.4byte _080A694E
	.4byte _080A6956
	.4byte _080A695E
_080A693C:
	ldr r1, [r2, #0x1c]
	movs r3, #0x87
	lsls r3, r3, #3
	adds r1, r1, r3
	b _080A6966
_080A6946:
	ldr r1, [r2, #0x1c]
	movs r0, #0x88
	lsls r0, r0, #3
	b _080A6964
_080A694E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x89
	lsls r0, r0, #3
	b _080A6964
_080A6956:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8a
	lsls r0, r0, #3
	b _080A6964
_080A695E:
	ldr r1, [r2, #0x1c]
	movs r0, #0x8b
	lsls r0, r0, #3
_080A6964:
	adds r1, r1, r0
_080A6966:
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _080A6976
_080A6974:
	movs r0, #0
_080A6976:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
