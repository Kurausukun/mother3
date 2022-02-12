.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08072568
sub_08072568: @ 0x08072568
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xa0
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

	thumb_func_start sub_08072588
sub_08072588: @ 0x08072588
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xa4
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

	thumb_func_start sub_080725A8
sub_080725A8: @ 0x080725A8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
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

	thumb_func_start sub_080725C8
sub_080725C8: @ 0x080725C8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xac
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

	thumb_func_start sub_080725E8
sub_080725E8: @ 0x080725E8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xb0
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

	thumb_func_start sub_08072608
sub_08072608: @ 0x08072608
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xb4
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

	thumb_func_start sub_08072628
sub_08072628: @ 0x08072628
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
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

	thumb_func_start sub_08072648
sub_08072648: @ 0x08072648
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08072690
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bne _08072690
	movs r5, #1
_08072690:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072698
sub_08072698: @ 0x08072698
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xbc
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

	thumb_func_start sub_080726B8
sub_080726B8: @ 0x080726B8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xc0
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

	thumb_func_start sub_080726D8
sub_080726D8: @ 0x080726D8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xc4
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

	thumb_func_start sub_080726F8
sub_080726F8: @ 0x080726F8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xc8
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

	thumb_func_start sub_08072718
sub_08072718: @ 0x08072718
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xcc
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

	thumb_func_start sub_08072738
sub_08072738: @ 0x08072738
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xd0
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

	thumb_func_start sub_08072758
sub_08072758: @ 0x08072758
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xd4
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

	thumb_func_start sub_08072778
sub_08072778: @ 0x08072778
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xd8
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

	thumb_func_start sub_08072798
sub_08072798: @ 0x08072798
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xdc
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

	thumb_func_start sub_080727B8
sub_080727B8: @ 0x080727B8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
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

	thumb_func_start sub_080727D8
sub_080727D8: @ 0x080727D8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xe4
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

	thumb_func_start sub_080727F8
sub_080727F8: @ 0x080727F8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xe8
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

	thumb_func_start sub_08072818
sub_08072818: @ 0x08072818
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xec
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

	thumb_func_start sub_08072838
sub_08072838: @ 0x08072838
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0xf0
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

	thumb_func_start sub_08072858
sub_08072858: @ 0x08072858
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072878
sub_08072878: @ 0x08072878
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072898
sub_08072898: @ 0x08072898
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080728B8
sub_080728B8: @ 0x080728B8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x86
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080728D8
sub_080728D8: @ 0x080728D8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080728F8
sub_080728F8: @ 0x080728F8
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072918
sub_08072918: @ 0x08072918
	push {lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072938
sub_08072938: @ 0x08072938
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _0807295C
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0807A8B8
	cmp r4, r0
	bne _0807295C
	movs r5, #1
_0807295C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072964
sub_08072964: @ 0x08072964
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _080729A8
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0807A8B8
	cmp r4, r0
	bne _080729A8
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _080729A8
	movs r7, #1
_080729A8:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080729B0
sub_080729B0: @ 0x080729B0
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	beq _080729D2
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0807A8B8
	adds r1, r5, #0
	cmp r4, r0
	beq _080729D4
_080729D2:
	movs r1, #0
_080729D4:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080729DC
sub_080729DC: @ 0x080729DC
	push {lr}
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080729F8
sub_080729F8: @ 0x080729F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072A18
sub_08072A18: @ 0x08072A18
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_080728B8
	adds r4, r0, #0
	movs r5, #0
	b _08072A6C
_08072A28:
	ldr r1, [r4, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072A6A
	ldr r1, [r4, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08072A82
_08072A6A:
	adds r5, #1
_08072A6C:
	ldr r1, [r4, #0x1c]
	adds r1, #0x98
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08072A28
	movs r0, #0
_08072A82:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072A88
sub_08072A88: @ 0x08072A88
	push {lr}
	bl sub_080728B8
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

	thumb_func_start sub_08072AA4
sub_08072AA4: @ 0x08072AA4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072AC4
sub_08072AC4: @ 0x08072AC4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_080728B8
	adds r4, r0, #0
	movs r5, #0
	b _08072B18
_08072AD4:
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072B16
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08072B2E
_08072B16:
	adds r5, #1
_08072B18:
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08072AD4
	movs r0, #0
_08072B2E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072B34
sub_08072B34: @ 0x08072B34
	push {lr}
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072B50
sub_08072B50: @ 0x08072B50
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072B70
sub_08072B70: @ 0x08072B70
	push {lr}
	bl sub_080728B8
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_08072B86:
	bl sub_080728B8
	ldr r2, [r0, #0x1c]
	adds r2, #0x90
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	bl sub_080728B8
	ldr r2, [r0, #0x1c]
	adds r2, #0x88
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08072B86
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08072BBC
sub_08072BBC: @ 0x08072BBC
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _08072BE0
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl get__14GuestSingleton
	cmp r4, r0
	bne _08072BE0
	movs r5, #1
_08072BE0:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072BE8
sub_08072BE8: @ 0x08072BE8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _08072C2C
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl get__14GuestSingleton
	cmp r4, r0
	bne _08072C2C
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072C2C
	movs r7, #1
_08072C2C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08072C34
sub_08072C34: @ 0x08072C34
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	beq _08072C56
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl get__14GuestSingleton
	adds r1, r5, #0
	cmp r4, r0
	beq _08072C58
_08072C56:
	movs r1, #0
_08072C58:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072C60
sub_08072C60: @ 0x08072C60
	push {lr}
	bl sub_080728D8
	ldr r1, [r0, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072C7C
sub_08072C7C: @ 0x08072C7C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728D8
	ldr r1, [r0, #0x1c]
	adds r1, #0x88
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072C9C
sub_08072C9C: @ 0x08072C9C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_080728D8
	adds r4, r0, #0
	movs r5, #0
	b _08072CF0
_08072CAC:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072CEE
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08072D06
_08072CEE:
	adds r5, #1
_08072CF0:
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08072CAC
	movs r0, #0
_08072D06:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072D0C
sub_08072D0C: @ 0x08072D0C
	push {lr}
	bl sub_080728D8
	ldr r1, [r0, #0x1c]
	adds r1, #0x70
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_08072D22:
	bl sub_080728D8
	ldr r2, [r0, #0x1c]
	adds r2, #0x78
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	bl sub_080728D8
	ldr r2, [r0, #0x1c]
	adds r2, #0x70
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08072D22
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08072D58
sub_08072D58: @ 0x08072D58
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _08072D7C
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_080809E4
	cmp r4, r0
	bne _08072D7C
	movs r5, #1
_08072D7C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072D84
sub_08072D84: @ 0x08072D84
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _08072DC8
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_080809E4
	cmp r4, r0
	bne _08072DC8
	ldr r1, [r5, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072DC8
	movs r7, #1
_08072DC8:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08072DD0
sub_08072DD0: @ 0x08072DD0
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0
	beq _08072DF2
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_080809E4
	adds r1, r5, #0
	cmp r4, r0
	beq _08072DF4
_08072DF2:
	movs r1, #0
_08072DF4:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08072DFC
sub_08072DFC: @ 0x08072DFC
	push {lr}
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072E18
sub_08072E18: @ 0x08072E18
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072E38
sub_08072E38: @ 0x08072E38
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_080728F8
	adds r4, r0, #0
	movs r5, #0
	b _08072E8C
_08072E48:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072E8A
	ldr r1, [r4, #0x1c]
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08072EA2
_08072E8A:
	adds r5, #1
_08072E8C:
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08072E48
	movs r0, #0
_08072EA2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072EA8
sub_08072EA8: @ 0x08072EA8
	push {lr}
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08072EC4
sub_08072EC4: @ 0x08072EC4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xf0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08072EE4
sub_08072EE4: @ 0x08072EE4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_080728F8
	adds r4, r0, #0
	movs r5, #0
	b _08072F38
_08072EF4:
	ldr r1, [r4, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08072F36
	ldr r1, [r4, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08072F4E
_08072F36:
	adds r5, #1
_08072F38:
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r5, r0
	blt _08072EF4
	movs r0, #0
_08072F4E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072F54
sub_08072F54: @ 0x08072F54
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_080728F8
	ldr r4, [r0, #0x1c]
	adds r4, #0xa8
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	add r6, sp, #4
	movs r2, #0x88
	lsls r2, r2, #1
	movs r3, #0x20
	adds r1, r6, #0
	strh r2, [r1]
	strh r3, [r6, #2]
	add r2, sp, #8
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	strh r1, [r2, #2]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	movs r1, #0x1e
	str r1, [sp]
	ldr r4, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r4
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072F9C
sub_08072F9C: @ 0x08072F9C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_080728F8
	ldr r4, [r0, #0x1c]
	adds r4, #0xa8
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	ldr r2, [r6]
	mov r1, r8
	ldr r3, [r1]
	mov r1, sb
	str r1, [sp]
	ldr r4, [r4, #4]
	adds r1, r5, #0
	bl _call_via_r4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08072FE0
sub_08072FE0: @ 0x08072FE0
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _08073010
	ldr r2, [r4, #0x20]
	adds r0, #0x20
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl _call_via_r2
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xc0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
_08073010:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08073018
sub_08073018: @ 0x08073018
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	bl sub_080728F8
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_08073036:
	bl sub_080728F8
	ldr r2, [r0, #0x1c]
	adds r2, #0xd0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #4]
	adds r1, r5, #0
	adds r2, r4, #0
	bl _call_via_r3
	bl sub_080728F8
	ldr r2, [r0, #0x1c]
	adds r2, #0xc8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08073036
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08073070
sub_08073070: @ 0x08073070
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	ldr r2, [r0, #0x20]
	adds r2, #0x40
	mov r3, r8
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	movs r6, #0
	cmp r6, r5
	bgt _080730EE
	add r4, sp, #4
	mov r7, sp
_080730A0:
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	movs r1, #0
	ldrsh r0, [r7, r1]
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08069558
	strh r0, [r4]
	movs r1, #2
	ldrsh r0, [r7, r1]
	mov r2, sb
	movs r3, #2
	ldrsh r1, [r2, r3]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08069558
	strh r0, [r4, #2]
	mov r0, r8
	ldr r2, [r0, #0x20]
	adds r0, #0x20
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1c]
	adds r1, r4, #0
	bl _call_via_r2
	movs r0, #1
	bl sub_0807068C
	adds r6, #1
	cmp r6, r5
	ble _080730A0
_080730EE:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080730FC
sub_080730FC: @ 0x080730FC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	cmp r6, #0
	beq _08073146
	adds r5, r2, #0
	cmp r5, #0
	beq _08073114
	movs r5, #1
_08073114:
	str r2, [sp, #4]
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r1, sp, #4
	str r1, [sp]
	ldr r4, [r2, #0x14]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl _call_via_r4
_08073146:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08073150
sub_08073150: @ 0x08073150
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08073190
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	str r4, [sp]
	ldr r4, [r2, #0x14]
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl _call_via_r4
_08073190:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08073198
sub_08073198: @ 0x08073198
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _080731AC
	movs r0, #0
	b _080731E6
_080731AC:
	adds r5, r2, #0
	cmp r5, #0
	beq _080731B4
	movs r5, #1
_080731B4:
	str r2, [sp, #4]
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	add r1, sp, #4
	str r1, [sp]
	ldr r4, [r2, #0x1c]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl _call_via_r4
_080731E6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080731F0
sub_080731F0: @ 0x080731F0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08073232
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x18
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	str r4, [sp]
	ldr r4, [r2, #0x1c]
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl _call_via_r4
	b _08073234
_08073232:
	movs r0, #0
_08073234:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0807323C
sub_0807323C: @ 0x0807323C
	push {r4, lr}
	adds r4, r0, #0
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x30
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x34]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08073270
sub_08073270: @ 0x08073270
	push {r4, r5, r6, lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	b _080732B2
_0807328E:
	ldr r1, [r6, #0x10]
	adds r5, r1, #0
	adds r5, #0x30
	movs r0, #0x30
	ldrsh r4, [r1, r0]
	adds r4, r6, r4
	movs r2, #0x28
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #0x2c]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_080732B2:
	ldr r1, [r6, #0x10]
	movs r3, #0x20
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807328E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080732CC
sub_080732CC: @ 0x080732CC
	push {r4, lr}
	adds r4, r0, #0
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x10]
	movs r3, #0x38
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x3c]
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08073300
sub_08073300: @ 0x08073300
	push {r4, r5, r6, lr}
	bl get__15BattleSingleton
	ldr r1, [r0, #0x1c]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	b _08073342
_0807331E:
	ldr r1, [r6, #0x10]
	adds r5, r1, #0
	adds r5, #0x38
	movs r0, #0x38
	ldrsh r4, [r1, r0]
	adds r4, r6, r4
	movs r2, #0x28
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #0x2c]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
_08073342:
	ldr r1, [r6, #0x10]
	movs r3, #0x20
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807331E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0807335C
sub_0807335C: @ 0x0807335C
	push {r4, r5, r6, lr}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0807343C
	bl sub_08074614
	cmp r0, #0
	beq _0807338C
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080733A6
_0807338C:
	mov r0, sp
	adds r1, r6, #0
	bl sub_0806FF6C
	mov r0, sp
	movs r1, #0
	bl sub_08070048
	mov r0, sp
	movs r1, #2
	bl sub_0806FFA8
	b _0807343C
_080733A6:
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #2
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r5, #0x96
	lsls r5, r5, #2
	b _080733D6
_080733CE:
	adds r4, r0, #0
	movs r0, #1
	bl sub_0807068C
_080733D6:
	subs r5, #1
	cmp r5, #0
	ble _08073408
	bl sub_08074614
	ldr r2, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	movs r1, #2
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r1, #0
	cmp r4, #1
	beq _080733CE
	cmp r1, #1
	bne _080733CE
_08073408:
	mov r0, sp
	adds r1, r6, #0
	bl sub_0806FF6C
	mov r0, sp
	movs r1, #0
	bl sub_08070048
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, sp
	bl sub_080702C0
	mov r0, sp
	movs r1, #2
	bl sub_0806FFA8
_0807343C:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08073444
sub_08073444: @ 0x08073444
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0807345C @ =0x000003A6
	bl sub_080706D0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807345C: .4byte 0x000003A6

	thumb_func_start sub_08073460
sub_08073460: @ 0x08073460
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	mov r8, r0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r4, [sp, #0x24]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r0, sp, #4
	bl sub_08073444
	str r4, [sp]
	mov r0, r8
	add r1, sp, #4
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_080734A0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	mov r0, r8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080734A0
sub_080734A0: @ 0x080734A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	adds r4, r1, #0
	mov sb, r2
	mov r8, r3
	mov r0, sp
	bl sub_0806E274
	movs r6, #0
	add r7, sp, #0xc
	b _080735B2
_080734C0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080734DC @ =0x0000FF10
	cmp r1, r0
	bne _080734E0
	mov r0, sp
	mov r1, sb
	bl sub_0806E374
	b _080735B0
	.align 2, 0
_080734DC: .4byte 0x0000FF10
_080734E0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _080734FC @ =0x0000FF11
	cmp r1, r0
	bne _08073500
	mov r0, sp
	mov r1, r8
	bl sub_0806E374
	b _080735B0
	.align 2, 0
_080734FC: .4byte 0x0000FF11
_08073500:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r0, [r0]
	ldr r5, _0807351C @ =0x0000FF12
	cmp r0, r5
	bne _08073520
	mov r0, sp
	ldr r1, [sp, #0x38]
	bl sub_0806E374
	b _080735B0
	.align 2, 0
_0807351C: .4byte 0x0000FF12
_08073520:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r0, [r0]
	cmp r0, r5
	bls _08073558
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08073554 @ =0x0000FF21
	cmp r1, r0
	bhi _08073558
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	adds r1, #0xed
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	b _0807356C
	.align 2, 0
_08073554: .4byte 0x0000FF21
_08073558:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _08073584 @ =0x0000FFE0
	cmp r1, r0
	bne _08073588
	adds r0, r7, #0
	movs r1, #2
_0807356C:
	bl sub_0807A8CC
	mov r0, sp
	adds r1, r7, #0
	bl sub_0806E374
	adds r0, r7, #0
	movs r1, #2
	bl sub_0806E308
	b _080735B0
	.align 2, 0
_08073584: .4byte 0x0000FFE0
_08073588:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	ldr r0, _0807359C @ =0x0000FFE1
	cmp r1, r0
	bne _080735A0
	adds r6, #1
	b _080735B0
	.align 2, 0
_0807359C: .4byte 0x0000FFE1
_080735A0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0806E33C
	ldrh r1, [r0]
	mov r0, sp
	bl sub_0806E34C
_080735B0:
	adds r6, #1
_080735B2:
	adds r0, r4, #0
	bl sub_0806E414
	cmp r6, r0
	bge _080735BE
	b _080734C0
_080735BE:
	mov r0, sl
	mov r1, sp
	bl sub_0806E2B8
	mov r0, sp
	movs r1, #2
	bl sub_0806E308
	mov r0, sl
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080735E0
sub_080735E0: @ 0x080735E0
	push {r4, r5, r6, lr}
	ldr r4, _08073628 @ =0xFFFFF020
	add sp, r4
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	bl sub_0806E414
	cmp r0, #0
	ble _0807361C
	mov r0, sp
	bl sub_08083D40
	mov r0, sp
	adds r1, r4, #0
	bl sub_08084038
	mov r0, sp
	adds r1, r5, #0
	bl sub_080840A0
	mov r0, sp
	adds r1, r6, #0
	bl sub_080840B8
	mov r0, sp
	movs r1, #2
	bl sub_08083FE0
_0807361C:
	movs r3, #0xfe
	lsls r3, r3, #4
	add sp, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08073628: .4byte 0xFFFFF020

	thumb_func_start sub_0807362C
sub_0807362C: @ 0x0807362C
	push {r4, r5, r6, lr}
	ldr r4, _08073674 @ =0xFFFFEF74
	add sp, r4
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r4, r2, #0x18
	lsrs r4, r4, #0x18
	mov r0, sp
	bl sub_0808434C
	mov r0, sp
	adds r1, r5, #0
	bl sub_0808477C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080847E4
	mov r0, sp
	adds r1, r6, #0
	bl sub_08084820
	mov r0, sp
	bl sub_08084D68
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl sub_0808470C
	adds r0, r4, #0
	ldr r3, _08073678 @ =0x0000108C
	add sp, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08073674: .4byte 0xFFFFEF74
_08073678: .4byte 0x0000108C

	thumb_func_start sub_0807367C
sub_0807367C: @ 0x0807367C
	push {r4, lr}
	ldr r4, _080736AC @ =0xFFFFE894
	add sp, r4
	adds r4, r0, #0
	bl sub_0806E414
	cmp r0, #0
	ble _080736A2
	mov r0, sp
	bl sub_080856E8
	mov r0, sp
	adds r1, r4, #0
	bl sub_080859EC
	mov r0, sp
	movs r1, #2
	bl sub_08085988
_080736A2:
	ldr r3, _080736B0 @ =0x0000176C
	add sp, r3
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080736AC: .4byte 0xFFFFE894
_080736B0: .4byte 0x0000176C

	thumb_func_start sub_080736B4
sub_080736B4: @ 0x080736B4
	push {r4, r5, lr}
	ldr r4, _080736F0 @ =0xFFFFEB10
	add sp, r4
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806E414
	cmp r0, #0
	ble _080736E4
	mov r0, sp
	bl sub_08084F08
	mov r0, sp
	adds r1, r5, #0
	bl sub_08085130
	mov r0, sp
	adds r1, r4, #0
	bl sub_080851A0
	mov r0, sp
	movs r1, #2
	bl sub_080850E0
_080736E4:
	ldr r3, _080736F4 @ =0x000014F0
	add sp, r3
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080736F0: .4byte 0xFFFFEB10
_080736F4: .4byte 0x000014F0

	thumb_func_start sub_080736F8
sub_080736F8: @ 0x080736F8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _0807372C
	movs r0, #0xd4
	bl __builtin_new
	adds r4, r0, #0
	ldr r2, [r5, #0x20]
	adds r2, #0x40
	adds r3, r5, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	mov r1, sp
	bl sub_08086124
_0807372C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08073734
sub_08073734: @ 0x08073734
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x30
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807376A
	movs r6, #0
_0807376A:
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sb, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r5, r1, r0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r0, sl
	cmp r0, #1
	bne _0807389A
	movs r0, #0xac
	bl __builtin_new
	adds r5, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x34
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08085FB0
	adds r0, r7, #0
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807389A
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0807389A
	movs r0, #0x4d
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x7b
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x38
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_0807389A:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sb
	subs r0, r1, r0
	cmp r0, #0
	ble _08073902
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _08073902
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073902
	movs r0, #0
	movs r1, #0x63
	bl sub_08070660
	cmp r0, #0x27
	bgt _08073902
	adds r0, r7, #0
	movs r1, #3
	mov r2, sl
	bl sub_08073EE8
_08073902:
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sb
	subs r0, r1, r0
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807392C
sub_0807392C: @ 0x0807392C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x30
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073962
	movs r6, #0
_08073962:
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r5, r1, r0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r0, sb
	cmp r0, #1
	bne _08073A92
	movs r0, #0xb8
	bl __builtin_new
	adds r5, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x34
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080862D8
	adds r0, r7, #0
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073A92
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08073A92
	movs r0, #0x4d
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x7b
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x38
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_08073A92:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r1, r0
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08073ABC
sub_08073ABC: @ 0x08073ABC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r1, [r7, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0x30
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073AF2
	movs r6, #0
_08073AF2:
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r5, r1, r0
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	subs r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r0, [r7, #0x1c]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r1, r1, r6
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	mov r0, sb
	cmp r0, #1
	bne _08073C22
	movs r0, #0xac
	bl __builtin_new
	adds r5, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r4, sp, #0x34
	adds r0, r4, #0
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08085FB0
	adds r0, r7, #0
	bl sub_08072938
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073C22
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08073C22
	movs r0, #0x4d
	adds r1, r7, #0
	adds r2, r7, #0
	bl sub_080730FC
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl sub_0806E274
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0806E274
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x7b
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460
	add r1, sp, #0x38
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_080735E0
	add r0, sp, #4
	movs r1, #2
	bl sub_0806E308
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r5, #0
	movs r1, #2
	bl sub_0806E308
	adds r0, r6, #0
	movs r1, #2
	bl sub_0806E308
_08073C22:
	ldr r1, [r7, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r1, r0
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08073C4C
sub_08073C4C: @ 0x08073C4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r1
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r1, sb
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	cmp r5, #1
	bne _08073CCC
	movs r0, #0xac
	bl __builtin_new
	adds r4, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	mov r1, sb
	mov r2, sp
	bl sub_08085C98
_08073CCC:
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r0, r1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08073CF0
sub_08073CF0: @ 0x08073CF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r1
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	ldr r1, [r7, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, sb
	subs r1, r1, r0
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	cmp r5, #1
	bne _08073D72
	movs r0, #0xac
	bl __builtin_new
	adds r4, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	mov r1, sb
	mov r2, sp
	bl sub_08085FB0
_08073D72:
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r1, r0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08073D98
sub_08073D98: @ 0x08073D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r1
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	ldr r1, [r7, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov sl, r0
	ldr r1, [r7, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r2, #0
	ldrsh r4, [r6, r2]
	adds r4, r7, r4
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	add r1, sb
	ldr r2, [r6, #4]
	adds r0, r4, #0
	bl _call_via_r2
	cmp r5, #1
	bne _08073E18
	movs r0, #0xac
	bl __builtin_new
	adds r4, r0, #0
	ldr r2, [r7, #0x20]
	adds r2, #0x40
	adds r3, r7, #0
	adds r3, #0x20
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	adds r0, r4, #0
	mov r1, sb
	mov r2, sp
	bl sub_08085E24
_08073E18:
	ldr r1, [r7, #0x1c]
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r1, sl
	subs r0, r0, r1
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08073E3C
sub_08073E3C: @ 0x08073E3C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, [r5, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r4
	bne _08073EDE
	ldr r1, [r5, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
	adds r4, r0, #0
	cmp r6, #1
	bne _08073EDA
	cmp r4, #0
	beq _08073EDA
	ldr r1, [r4, #0x1c]
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_080730FC
	ldr r2, [r4, #0x1c]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	add r1, sp, #0xc
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
_08073EDA:
	movs r0, #1
	b _08073EE0
_08073EDE:
	movs r0, #0
_08073EE0:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08073EE8
sub_08073EE8: @ 0x08073EE8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08073F7C
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	adds r3, r0, #0
	cmp r6, #1
	bne _08073F64
	cmp r3, #0
	beq _08073F64
	ldr r2, [r3, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r3, r1
	bl _call_via_r2
	add r1, sp, #0xc
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
_08073F64:
	ldr r1, [r4, #0x1c]
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	b _08073F7E
_08073F7C:
	movs r0, #0
_08073F7E:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08073F88
sub_08073F88: @ 0x08073F88
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08061A4C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08073F98
sub_08073F98: @ 0x08073F98
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _08073FBC
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_080803B4
	cmp r4, r0
	bne _08073FBC
	movs r5, #1
_08073FBC:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08073FC4
sub_08073FC4: @ 0x08073FC4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _08074008
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_080803B4
	cmp r4, r0
	bne _08074008
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08074008
	movs r7, #1
_08074008:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08074010
sub_08074010: @ 0x08074010
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08064950
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074020
sub_08074020: @ 0x08074020
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _08074044
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08082ADC
	cmp r4, r0
	bne _08074044
	movs r5, #1
_08074044:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0807404C
sub_0807404C: @ 0x0807404C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _08074090
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08082ADC
	cmp r4, r0
	bne _08074090
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _08074090
	movs r7, #1
_08074090:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08074098
sub_08074098: @ 0x08074098
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08065148
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080740AC
sub_080740AC: @ 0x080740AC
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _080740D0
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806496C
	cmp r4, r0
	bne _080740D0
	movs r5, #1
_080740D0:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080740D8
sub_080740D8: @ 0x080740D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _0807411C
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806496C
	cmp r4, r0
	bne _0807411C
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _0807411C
	movs r7, #1
_0807411C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08074124
sub_08074124: @ 0x08074124
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08062368
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074134
sub_08074134: @ 0x08074134
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _08074158
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl get__19GuestSkillSingleton
	cmp r4, r0
	bne _08074158
	movs r5, #1
_08074158:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08074160
sub_08074160: @ 0x08074160
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _080741A4
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl get__19GuestSkillSingleton
	cmp r4, r0
	bne _080741A4
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _080741A4
	movs r7, #1
_080741A4:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080741AC
sub_080741AC: @ 0x080741AC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08064574
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080741BC
sub_080741BC: @ 0x080741BC
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	cmp r2, #0
	beq _080741E0
	ldr r1, [r2, #0x1c]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08082020
	cmp r4, r0
	bne _080741E0
	movs r5, #1
_080741E0:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080741E8
sub_080741E8: @ 0x080741E8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r7, #0
	cmp r5, #0
	beq _0807422C
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_08082020
	cmp r4, r0
	bne _0807422C
	ldr r1, [r5, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bne _0807422C
	movs r7, #1
_0807422C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08074234
sub_08074234: @ 0x08074234
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r7, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl __10AttackDataUsUi
	movs r4, #0
	mov r0, sp
	bl attackdata_c8__10AttackData
	cmp r0, #0
	bne _080742C6
	movs r6, #0
	b _080742A4
_08074282:
	ldr r4, [r7, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r7, r5
	mov r0, sp
	adds r1, r6, #0
	bl attackdata_118__10AttackDataUi
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r6, #1
_080742A4:
	mov r0, sp
	bl attackdata_110__10AttackData
	cmp r6, r0
	blt _08074282
	ldr r1, [r7, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080742C6:
	cmp r7, #0
	beq _080742DA
	ldr r1, [r7, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080742DA:
	mov r0, sp
	movs r1, #2
	bl _._10AttackData
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080742EC
sub_080742EC: @ 0x080742EC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r4, r0
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r4, #0x1c]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r4, #0
	beq _08074330
	ldr r1, [r4, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08074330:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08074338
sub_08074338: @ 0x08074338
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	cmp r1, #0
	ble _08074360
	adds r6, r2, #0
	adds r4, r1, #0
_08074344:
	ldr r2, [r5, #0x1c]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r5, r0
	ldm r6!, {r1}
	ldr r2, [r2, #4]
	bl _call_via_r2
	subs r4, #1
	cmp r4, #0
	bne _08074344
_08074360:
	ldr r1, [r5, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r5, #0
	beq _0807438C
	ldr r1, [r5, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807438C:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08074394
sub_08074394: @ 0x08074394
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	adds r6, r2, #0
	add r0, sp, #0x24
	add r1, sp, #0x28
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r0, [r0]
	mov r8, r0
	ldrb r7, [r1]
	movs r5, #0
	cmp r5, r6
	bgt _08074404
_080743BC:
	ldr r0, [sp]
	mov r1, sl
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08069558
	adds r4, r0, #0
	mov r0, sb
	cmp r0, #1
	bne _080743DA
	bl sub_08072568
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080743DA:
	mov r0, r8
	cmp r0, #1
	bne _080743EA
	bl sub_08072588
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080743EA:
	cmp r7, #1
	bne _080743F8
	bl sub_080725A8
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080743F8:
	movs r0, #1
	bl sub_0807068C
	adds r5, #1
	cmp r5, r6
	ble _080743BC
_08074404:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08074414
sub_08074414: @ 0x08074414
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	adds r5, r2, #0
	add r0, sp, #0x24
	add r1, sp, #0x28
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r0, [r0]
	mov r8, r0
	ldrb r7, [r1]
	movs r6, #0
	cmp r6, r5
	bgt _08074484
_0807443C:
	subs r2, r5, r6
	ldr r0, [sp]
	mov r1, sl
	adds r3, r5, #0
	bl sub_08069558
	adds r4, r0, #0
	mov r0, sb
	cmp r0, #1
	bne _0807445A
	bl sub_08072568
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_0807445A:
	mov r0, r8
	cmp r0, #1
	bne _0807446A
	bl sub_08072588
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_0807446A:
	cmp r7, #1
	bne _08074478
	bl sub_080725A8
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_08074478:
	movs r0, #1
	bl sub_0807068C
	adds r6, #1
	cmp r6, r5
	ble _0807443C
_08074484:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08074494
sub_08074494: @ 0x08074494
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	adds r5, r2, #0
	add r0, sp, #0x24
	add r1, sp, #0x28
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r0, [r0]
	mov r8, r0
	ldrb r7, [r1]
	movs r6, #0
	cmp r6, r5
	bgt _08074508
_080744BC:
	subs r2, r5, r6
	ldr r0, [sp]
	mov r1, sl
	adds r3, r5, #0
	bl sub_08069558
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r0, r1
	mov r0, sb
	cmp r0, #1
	bne _080744DE
	bl sub_08072568
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080744DE:
	mov r1, r8
	cmp r1, #1
	bne _080744EE
	bl sub_08072588
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080744EE:
	cmp r7, #1
	bne _080744FC
	bl sub_080725A8
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_080744FC:
	movs r0, #1
	bl sub_0807068C
	adds r6, #1
	cmp r6, r5
	ble _080744BC
_08074508:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08074518
sub_08074518: @ 0x08074518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	adds r6, r2, #0
	add r0, sp, #0x24
	add r1, sp, #0x28
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldrb r0, [r0]
	mov r8, r0
	ldrb r7, [r1]
	movs r5, #0
	cmp r5, r6
	bgt _0807458C
_08074540:
	ldr r0, [sp]
	mov r1, sl
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08069558
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r0, r1
	mov r0, sb
	cmp r0, #1
	bne _08074562
	bl sub_08072568
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_08074562:
	mov r1, r8
	cmp r1, #1
	bne _08074572
	bl sub_08072588
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_08074572:
	cmp r7, #1
	bne _08074580
	bl sub_080725A8
	adds r1, r4, #0
	bl setBAll__15struct_0806A57CUi
_08074580:
	movs r0, #1
	bl sub_0807068C
	adds r5, #1
	cmp r5, r6
	ble _08074540
_0807458C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0807459C
sub_0807459C: @ 0x0807459C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r1
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	cmp r6, #0
	beq _080745E6
	bl sub_080725C8
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	adds r4, #0x68
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	movs r0, #0x60
	bl __builtin_new
	adds r1, r6, #0
	bl sub_0807466C
	adds r2, r0, #0
	mov r0, sp
	strb r7, [r0]
	ldr r4, [r4, #4]
	adds r0, r5, #0
	mov r1, r8
	mov r3, sb
	bl _call_via_r4
	b _08074604
_080745E6:
	bl sub_080725C8
	ldr r2, [r0, #0x1c]
	adds r2, #0x68
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	mov r1, sp
	strb r6, [r1]
	ldr r4, [r2, #4]
	mov r1, r8
	movs r2, #0
	mov r3, sb
	bl _call_via_r4
_08074604:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08074614
sub_08074614: @ 0x08074614
	push {lr}
	bl sub_080725C8
	ldr r1, [r0, #0x1c]
	adds r1, #0x78
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074630
sub_08074630: @ 0x08074630
	ldr r0, _08074634 @ =gUnknown_02002134
	bx lr
	.align 2, 0
_08074634: .4byte gUnknown_02002134

	thumb_func_start sub_08074638
sub_08074638: @ 0x08074638
	push {lr}
	bl sub_08074630
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074644
sub_08074644: @ 0x08074644
	ldr r0, _08074648 @ =gUnknown_02002128
	bx lr
	.align 2, 0
_08074648: .4byte gUnknown_02002128

	thumb_func_start sub_0807464C
sub_0807464C: @ 0x0807464C
	push {lr}
	bl sub_08074644
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074658
sub_08074658: @ 0x08074658
	ldr r0, _0807465C @ =gUnknown_0200211C
	bx lr
	.align 2, 0
_0807465C: .4byte gUnknown_0200211C

	thumb_func_start sub_08074660
sub_08074660: @ 0x08074660
	push {lr}
	bl sub_08074658
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807466C
sub_0807466C: @ 0x0807466C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_0806FF6C
	ldr r0, _080746FC @ =vt_09F812F8
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08074710
	str r0, [r5, #0x3c]
	movs r1, #0
	str r1, [r5, #0x40]
	str r1, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x48
	strb r1, [r0]
	str r1, [r5, #0x4c]
	adds r0, #8
	movs r2, #0
	strh r1, [r0]
	movs r0, #2
	str r0, [r5, #0x58]
	adds r0, r5, #0
	adds r0, #0x5c
	strb r2, [r0]
	bl get__10IrcManager
	ldr r1, _08074700 @ =gUnknown_08105CD0
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r5, #0
	bl sub_08069A50__3IrcUiG5Intr2
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08074704 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08074708 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0807470C @ =gUnknown_08105CD8
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl registerClock__4BasePvRC4BaseG9ClockData
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
_080746FC: .4byte vt_09F812F8
_08074700: .4byte gUnknown_08105CD0
_08074704: .4byte _vt.3Unk
_08074708: .4byte _vt.8AppClock
_0807470C: .4byte gUnknown_08105CD8

	thumb_func_start sub_08074710
sub_08074710: @ 0x08074710
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	ldr r2, _08074724 @ =gUnknown_080EC578
_0807471A:
	ldrh r0, [r2, #2]
	cmp r0, r1
	bne _08074728
	adds r0, r2, #0
	b _08074732
	.align 2, 0
_08074724: .4byte gUnknown_080EC578
_08074728:
	adds r2, #8
	adds r3, #1
	cmp r3, #0x76
	ble _0807471A
	ldr r0, _08074738 @ =gUnknown_080EC578
_08074732:
	pop {r1}
	bx r1
	.align 2, 0
_08074738: .4byte gUnknown_080EC578

	thumb_func_start sub_0807473C
sub_0807473C: @ 0x0807473C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08074764 @ =vt_09F812F8
	str r0, [r4, #0x1c]
	bl get__10IrcManager
	ldr r1, _08074768 @ =gUnknown_08105CD0
	ldr r2, [r1]
	ldr r3, [r1, #4]
	adds r1, r4, #0
	bl sub_08069C84__3IrcUiG5Intr2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FFA8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074764: .4byte vt_09F812F8
_08074768: .4byte gUnknown_08105CD0

	thumb_func_start sub_0807476C
sub_0807476C: @ 0x0807476C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x5c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080747C6
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x68
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_080747CC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_080747C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080747CC
sub_080747CC: @ 0x080747CC
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	ldr r2, _080747E0 @ =gUnknown_081135A8
_080747D6:
	ldrh r0, [r2, #2]
	cmp r0, r1
	bne _080747E4
	ldrh r0, [r2]
	b _080747EE
	.align 2, 0
_080747E0: .4byte gUnknown_081135A8
_080747E4:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x38
	ble _080747D6
	movs r0, #0
_080747EE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080747F4
sub_080747F4: @ 0x080747F4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0807484C
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x68
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_08074854
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r1, [r6, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
_0807484C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08074854
sub_08074854: @ 0x08074854
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	ldr r2, _08074868 @ =gUnknown_081135A8
_0807485E:
	ldrh r0, [r2]
	cmp r0, r1
	bne _0807486C
	ldrh r0, [r2, #2]
	b _08074876
	.align 2, 0
_08074868: .4byte gUnknown_081135A8
_0807486C:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x38
	ble _0807485E
	movs r0, #0
_08074876:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0807487C
sub_0807487C: @ 0x0807487C
	push {lr}
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r1, #0x64
	muls r2, r1, r2
	adds r0, #0x50
	ldrh r1, [r0]
	adds r0, r2, #0
	bl sub_0807066C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08074898
sub_08074898: @ 0x08074898
	ldr r0, [r0, #0x58]
	bx lr

	thumb_func_start sub_0807489C
sub_0807489C: @ 0x0807489C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r0, #1
	movs r1, #0x18
	bl sub_0807067C
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x40]
	adds r0, #1
	str r0, [r4, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080748C8
sub_080748C8: @ 0x080748C8
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0x48
	ldr r0, [r2, #0x44]
	ldrb r1, [r4]
	cmp r0, r1
	bhs _08074900
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x4c]
	subs r0, r0, r1
	adds r1, r2, #0
	adds r1, #0x50
	strh r0, [r1]
	ldr r0, [r2, #0x40]
	str r0, [r2, #0x4c]
	ldr r1, [r2, #0x44]
	adds r3, r2, #0
	adds r3, #0x52
	ldrh r0, [r3]
	subs r0, #0x18
	subs r1, r1, r0
	adds r0, r2, #0
	adds r0, #0x54
	strh r1, [r0]
	ldr r0, [r2, #0x44]
	strh r0, [r3]
_08074900:
	ldr r0, [r2, #0x44]
	strb r0, [r4]
	ldr r6, [r2, #0x58]
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r0, [r0]
	movs r1, #1
	cmp r1, r0
	bge _08074914
	adds r1, r0, #0
_08074914:
	adds r4, r1, #0
	ldr r0, [r2, #0x44]
	adds r3, r0, #0
	muls r3, r4, r3
	ldr r5, [r2, #0x3c]
	ldrb r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	bls _08074936
	subs r1, r4, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	blo _0807493A
_08074936:
	movs r0, #0
	b _08074958
_0807493A:
	ldrb r1, [r5, #5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	bls _08074952
	subs r1, r4, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r3, r0
	blo _08074956
_08074952:
	movs r0, #1
	b _08074958
_08074956:
	movs r0, #2
_08074958:
	str r0, [r2, #0x58]
	cmp r6, #2
	bne _08074998
	ldr r0, [r2, #0x58]
	cmp r0, #2
	beq _080749C8
	ldr r4, [r2, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r2, r5
	mov r0, sp
	bl __4Base
	ldr r6, _08074990 @ =_vt.3Unk
	ldr r0, _08074994 @ =vt_09F81278
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	str r6, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	b _080749C8
	.align 2, 0
_08074990: .4byte _vt.3Unk
_08074994: .4byte vt_09F81278
_08074998:
	ldr r0, [r2, #0x58]
	cmp r0, #2
	bne _080749C8
	ldr r4, [r2, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r2, r5
	mov r0, sp
	bl __4Base
	ldr r6, _080749D0 @ =_vt.3Unk
	ldr r0, _080749D4 @ =vt_09F811F8
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	str r6, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_080749C8:
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080749D0: .4byte _vt.3Unk
_080749D4: .4byte vt_09F811F8

	thumb_func_start sub_080749D8
sub_080749D8: @ 0x080749D8
	push {r4, lr}
	ldr r4, _08074A04 @ =gUnknown_02002134
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08074A08 @ =vt_09F812E0
	str r0, [r4, #8]
	ldr r4, _08074A0C @ =gUnknown_02002128
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08074A10 @ =vt_09F81260
	str r0, [r4, #8]
	ldr r4, _08074A14 @ =gUnknown_0200211C
	adds r0, r4, #0
	bl __9Singleton
	ldr r0, _08074A18 @ =vt_09F81400
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08074A04: .4byte gUnknown_02002134
_08074A08: .4byte vt_09F812E0
_08074A0C: .4byte gUnknown_02002128
_08074A10: .4byte vt_09F81260
_08074A14: .4byte gUnknown_0200211C
_08074A18: .4byte vt_09F81400

	thumb_func_start sub_08074A1C
sub_08074A1C: @ 0x08074A1C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806FF38
	ldr r0, _08074A30 @ =vt_09F812F8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08074A30: .4byte vt_09F812F8
