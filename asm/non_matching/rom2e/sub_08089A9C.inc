	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x50]
	cmp r0, #4
	bhi _08089ADE
	lsls r0, r0, #2
	ldr r1, _08089AB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08089AB0: .4byte _08089AB4
_08089AB4:
	.4byte _08089ADE
	.4byte _08089AC8
	.4byte _08089AD0
	.4byte _08089AD8
	.4byte _08089ADE
_08089AC8:
	adds r0, r2, #0
	bl sub_08089AE4
	b _08089ADE
_08089AD0:
	adds r0, r2, #0
	bl sub_08089B4C
	b _08089ADE
_08089AD8:
	adds r0, r2, #0
	bl sub_08089D14
_08089ADE:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
