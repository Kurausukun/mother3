	.syntax unified
	push {lr}
	sub sp, #4
	ldr r2, _08058700
	ldrh r0, [r2]
	cmp r0, #0x9d
	bhi _080586F2
	mov r1, sp
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r0, _08058704
	ldrh r0, [r0]
	cmp r0, #0
	beq _080586F2
	adds r2, #0x3a
	ldr r1, _08058708
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_080586F2:
	ldr r1, _0805870C
	movs r0, #2
	strh r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08058700: .4byte 0x04000006
_08058704: .4byte gUnknown_03004AF0
_08058708: .4byte gUnknown_030040F0
_0805870C: .4byte 0x04000202
	.syntax divided
