	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08006844
	ldr r2, _08006848
	adds r0, r1, r2
	ldr r6, [r0]
	adds r2, #8
	adds r0, r1, r2
	ldr r4, [r0]
	subs r2, #4
	adds r0, r1, r2
	ldr r0, [r0]
	mov sl, r0
	ldr r0, _0800684C
	adds r1, r1, r0
	ldr r1, [r1]
	mov sb, r1
	movs r2, #8
	mov r8, r2
	movs r5, #0
	movs r7, #0xf0
	lsls r7, r7, #2
_0800680E:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_08001A14
	adds r6, r6, r7
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r8
	blo _0800680E
	mov r0, sl
	mov r1, sb
	movs r2, #0x1e
	mov r3, r8
	bl sub_08007318
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006844: .4byte gSomeBlend
_08006848: .4byte 0x00011D88
_0800684C: .4byte 0x00011D94
	.syntax divided
