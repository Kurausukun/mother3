	.syntax unified
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _080584DC
	ldr r2, _080584E0
	adds r0, r0, r2
	ldr r3, [r0]
	movs r0, #0
	cmp r0, r4
	bhs _080584EE
	movs r2, #0
_080584CA:
	strh r2, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #2
	cmp r0, r4
	blo _080584CA
	b _080584EE
	.align 2, 0
_080584DC: .4byte gSomeBlend
_080584E0: .4byte 0x000030FC
_080584E4:
	strh r5, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #2
_080584EE:
	cmp r0, r1
	blo _080584E4
	cmp r0, #0x9f
	bhi _08058506
	movs r1, #0
_080584F8:
	strh r1, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #2
	cmp r0, #0x9f
	bls _080584F8
_08058506:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
