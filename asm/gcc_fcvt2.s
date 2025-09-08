.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_08069474
sub_08069474: @ 0x08069474
	push {r4, lr}
	adds r4, r3, #0
	muls r0, r1, r0
	adds r1, r2, #0
	bl divck
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
	bl divck
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
	bl modck
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
	bl modck
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
	bl divck
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
	bl divck
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
	bl modck
	adds r1, r4, #0
	bl divck
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
	bl __floatsidf
	bl sub_080692B0
	bl __fixdfsi
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
	bl divck
	mov r8, r0
	mov r0, sb
	muls r0, r5, r0
	adds r1, r6, #0
	bl divck
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
	bl __divsi3
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
	bl __divsi3
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
