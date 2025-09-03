	.syntax unified
	push {r4, lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08021658
	movs r0, #3
	bl sub_08022354
	adds r4, r0, #0
	movs r0, #0x28
	bl sub_08039B24
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #9
	bl sub_08002474
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802165C
	b _08021682
_08021658:
	cmp r0, #2
	beq _08021664
_0802165C:
	movs r0, #0
	bl scriptstack_push
	b _08021690
_08021664:
	movs r0, #4
	bl sub_08022354
	adds r4, r0, #0
	movs r0, #0x29
	bl sub_08039B24
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #9
	bl sub_08002474
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802168A
_08021682:
	movs r0, #1
	bl scriptstack_push
	b _08021690
_0802168A:
	movs r0, #0
	bl scriptstack_push
_08021690:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
