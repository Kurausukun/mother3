	.syntax unified
sub_080532E0:
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r7, r4, #0
	mov r0, sp
	movs r1, #0x80
	bl memclear
	cmp r4, #1
	beq _0805332C
	cmp r4, #1
	bgt _08053306
	cmp r4, #0
	beq _0805330C
	b _0805336A
_08053306:
	cmp r7, #2
	beq _0805334C
	b _0805336A
_0805330C:
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, sp
	bl sub_08053384
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080533F0
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0805345C
	b _0805336A
_0805332C:
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, sp
	bl sub_080533F0
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0805345C
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08053384
	b _0805336A
_0805334C:
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, sp
	bl sub_0805345C
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08053384
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080533F0
_0805336A:
	lsls r1, r6, #7
	ldr r0, _08053380
	adds r1, r1, r0
	mov r0, sp
	movs r2, #0x80
	bl sub_08001B18
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053380: .4byte gUnknown_02019528
	.syntax divided
