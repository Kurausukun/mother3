	.syntax unified
sub_08048074:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x140
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r1, _080480FC
	ldr r2, _08048100
	adds r7, r1, r2
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	ldr r1, _08048104
	strh r1, [r7]
	movs r2, #0xa4
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	bl sub_080486D8
	adds r4, r0, #0
	adds r1, r6, #0
	bl sub_080025A0
	adds r5, r0, #0
	cmp r5, #0
	beq _080480F0
	adds r1, r6, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080025A0
	cmp r0, #0
	beq _080480F0
	subs r4, r0, r5
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	adds r0, r5, #0
	mov r1, sp
	bl sub_08001B18
	lsrs r4, r4, #0x11
	lsls r4, r4, #1
	mov r0, sp
	adds r1, r0, r4
	ldrh r0, [r1]
	mov r2, r8
	orrs r0, r2
	strh r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #1
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r7, #0
	bl sub_08001B54
	adds r0, r7, #0
	mov r1, sp
	bl sub_08048108
_080480F0:
	add sp, #0x140
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080480FC: .4byte gSomeBlend
_08048100: .4byte 0x000043AC
_08048104: .4byte 0x0000FFFF
	.syntax divided
