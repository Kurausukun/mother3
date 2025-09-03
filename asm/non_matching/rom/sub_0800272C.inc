	.syntax unified
	push {r4, lr}
	ldr r4, _08002754
	ldr r0, _08002758
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	bl sub_080031E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800275C
	bl sub_08002FD4
	movs r1, #0xe9
	lsls r1, r1, #3
	adds r4, r4, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002754: .4byte gSave
_08002758: .4byte 0x00000744
_0800275C: .4byte 0x00002A30
	.syntax divided
