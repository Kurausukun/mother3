	.syntax unified
sub_0801A904:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x14
	mov r8, r6
	adds r0, r5, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	blt _0801A946
	cmp r4, r6
	bge _0801A946
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0801A946
	cmp r2, r1
	blt _0801A950
_0801A946:
	ldr r0, _0801A94C
	b _0801A968
	.align 2, 0
_0801A94C: .4byte gUnknown_08D2D63C
_0801A950:
	ldr r0, _0801A974
	lsls r1, r5, #2
	adds r0, #0x5c
	adds r1, r1, r0
	ldr r0, [r1]
	lsls r1, r4, #1
	lsls r2, r2, #1
	mov r3, r8
	muls r3, r2, r3
	adds r2, r3, #0
	adds r1, r1, r2
	adds r0, r0, r1
_0801A968:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801A974: .4byte gGame
	.syntax divided
