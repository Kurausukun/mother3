	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080543AC
	movs r2, #0x6c
	muls r0, r2, r0
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #9
	bhi _080543E0
	lsls r0, r0, #2
	ldr r1, _080543B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080543AC: .4byte gGoodsInfo
_080543B0: .4byte _080543B4
_080543B4:
	.4byte _080543DC
	.4byte _080543DC
	.4byte _080543DC
	.4byte _080543DC
	.4byte _080543E0
	.4byte _080543E0
	.4byte _080543DC
	.4byte _080543DC
	.4byte _080543DC
	.4byte _080543DC
_080543DC:
	movs r0, #1
	b _080543E2
_080543E0:
	movs r0, #0
_080543E2:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
