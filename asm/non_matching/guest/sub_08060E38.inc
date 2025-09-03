	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r2, #0
	subs r1, #1
	cmp r1, #3
	bgt _08060E60
	cmp r0, #3
	bgt _08060E60
	ldr r2, _08060E5C
	lsls r0, r0, #1
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08060E80
	b _08060E66
	.align 2, 0
_08060E5C: .4byte gUnknown_080F4C28
_08060E60:
	adds r0, r4, #0
	bl sub_08060E70
_08060E66:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
