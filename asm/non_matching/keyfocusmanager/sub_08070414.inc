	.syntax unified
sub_08070414:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, _08070474
	str r0, [r7, #0x1c]
	movs r5, #0
	adds r1, r7, #0
	adds r1, #0x20
	ldr r0, [r1, #4]
	cmp r5, r0
	bge _08070456
	adds r4, r1, #0
	movs r6, #0
_08070432:
	ldr r0, [r4, #8]
	adds r0, r0, r6
	ldr r2, [r0]
	cmp r2, #0
	beq _0807044C
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0807044C:
	adds r6, #0xc
	adds r5, #1
	ldr r0, [r4, #4]
	cmp r5, r0
	blt _08070432
_08070456:
	ldr r0, [r7, #0x28]
	cmp r0, #0
	beq _08070460
	bl __builtin_vec_delete
_08070460:
	adds r0, r7, #0
	mov r1, r8
	bl _._4Base
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070474: .4byte vt_09F80770
	.syntax divided
