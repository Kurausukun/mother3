	.syntax unified
sub_08027164:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bne _08027174
	movs r0, #0
	b _08027186
_08027174:
	cmp r0, #2
	bhi _08027180
	adds r0, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08027186
_08027180:
	subs r0, r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08027186:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
